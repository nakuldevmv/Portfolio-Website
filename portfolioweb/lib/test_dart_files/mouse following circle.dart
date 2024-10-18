import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientBlurEffect(),
      ),
    );
  }
}

class GradientBlurEffect extends StatefulWidget {
  const GradientBlurEffect({super.key});

  @override
  _GradientBlurEffectState createState() => _GradientBlurEffectState();
}

class _GradientBlurEffectState extends State<GradientBlurEffect> with SingleTickerProviderStateMixin {
  Offset? _hoverPosition; // To track the mouse position
  Offset _circlePosition = const Offset(0, 0); // To store the current position of the circle
  Timer? _timer; // To manage the delay
  late AnimationController _controller; // Animation controller for gradient
  late Animation<Color?> _colorAnimation; // Animation for colors

  @override
  void initState() {
    super.initState();

    // Initialize AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();

    // Define a color animation that cycles through colors
    _colorAnimation = ColorTween(
      begin: Colors.blueAccent,
      end: Colors.deepPurple,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when disposing
    _controller.dispose(); // Dispose the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _hoverPosition = event.localPosition; // Update mouse position
        });
        _updateCirclePosition(event.localPosition); // Update circle position
      },
      onExit: (_) {
        setState(() {
          _hoverPosition = null; // Reset position on exit
        });
      },
      child: Stack(
        children: [
          // Animated Gradient Background
          AnimatedBuilder(
            animation: _colorAnimation,
            builder: (context, child) {
              return Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      _colorAnimation.value!,
                      _colorAnimation.value!.withOpacity(0.7),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              );
            },
          ),
          // Circle that follows the mouse
          if (_hoverPosition != null) ...[
            Positioned(
              left: _circlePosition.dx - 25, // Center the circle on the pointer
              top: _circlePosition.dy - 25,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.yellowAccent,
                      Colors.redAccent,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ],
          // Blur Effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              color: Colors.black.withOpacity(0.3), // Semi-transparent overlay
            ),
          ),
        ],
      ),
    );
  }

  void _updateCirclePosition(Offset targetPosition) {
    // Cancel the previous timer
    _timer?.cancel();

    // Start a new timer to update the circle's position with a delay
    _timer = Timer(const Duration(milliseconds: 10), () {
      setState(() {
        // Smoothly interpolate the circle position
        _circlePosition = Offset.lerp(_circlePosition, targetPosition, 0.1)!;
      });
    });
  }
}
