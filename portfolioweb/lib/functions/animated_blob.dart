import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBlobBackground extends StatefulWidget {
  final Widget child;
  final List<Duration> delays;
  const AnimatedBlobBackground({
    super.key,
    required this.child,
    this.delays = const [
      Duration(seconds: 0),
      Duration(seconds: 2),
      Duration(seconds: 4),
    ],
  });

  @override
  State<AnimatedBlobBackground> createState() => _AnimatedBlobBackgroundState();
}

class _AnimatedBlobBackgroundState extends State<AnimatedBlobBackground> with TickerProviderStateMixin {
  late final List<AnimationController> _controllers;
  late final List<Animation<double>> _animations;
  final int numberOfBlobs = 3;

  @override
  void initState() {
    super.initState();

    // Initialize controllers with different speeds
    _controllers = List.generate(
      numberOfBlobs,
      (index) => AnimationController(
        duration: Duration(seconds: 8 + index * 2), // Longer duration for smoother movement
        vsync: this,
      ),
    );

    // Start animations with delays
    for (int i = 0; i < numberOfBlobs; i++) {
      Future.delayed(widget.delays[i], () {
        if (mounted) {
          _controllers[i].repeat();
        }
      });
    }

    // Create animations with custom curves for more organic movement
    _animations = _controllers.map((controller) {
      return CurvedAnimation(
        parent: controller,
        curve: Curves.easeInOut,
      );
    }).toList();
  }

  @override
  void dispose() {
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  // Calculate blob position based on animation value
  Offset _calculateBlobPosition(double value, int index, Size size) {
    // Center point of the screen
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    // Radius of movement from center
    final radius = math.min(size.width, size.height) * 0.15;

    // Calculate angle based on animation value and blob index
    final angle = value * 2 * math.pi + (2 * math.pi / numberOfBlobs * index);

    // Add some vertical oscillation
    final verticalOffset = math.sin(value * 4 * math.pi) * radius * 0.3;

    // Calculate position with circular motion around center
    final x = centerX + math.cos(angle) * radius;
    final y = centerY + math.sin(angle) * radius + verticalOffset;

    return Offset(x, y);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background with specified RadialGradient
        // Container(
        //   decoration: const BoxDecoration(
        //     gradient: RadialGradient(
        //       colors: [
        //         Color(0xff7094ff),
        //         Color(0xff000000)
        //       ],
        //       stops: [
        //         0,
        //         1
        //       ],
        //       center: Alignment.topCenter,
        //     ),
        //   ),
        // ),

        // Animated blobs
        ...List.generate(numberOfBlobs, (index) {
          return AnimatedBuilder(
            animation: _animations[index],
            builder: (context, child) {
              final size = MediaQuery.of(context).size;
              final position = _calculateBlobPosition(_animations[index].value, index, size);

              return Positioned(
                left: position.dx - 250, // Center the blob (half of width)
                top: position.dy - 250, // Center the blob (half of height)
                child: Container(
                  width: 700,
                  height: 700,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        // Different colors for each blob
                        if (index == 0) Colors.purple.withOpacity(0.5) else if (index == 1) Colors.blue.withOpacity(0.5) else Colors.indigo.withOpacity(0.5),
                        Colors.transparent,
                      ],
                      stops: const [
                        0.2,
                        1.0
                      ], // Sharper gradient falloff
                    ),
                    borderRadius: BorderRadius.circular(250),
                  ),
                ),
              );
            },
          );
        }),

        // Backdrop filter for the glass effect
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 30,
            sigmaY: 30,
          ),
          child: widget.child,
        ),
      ],
    );
  }
}
