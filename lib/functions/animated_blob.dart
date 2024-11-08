import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class BlobConfig {
  final List<Color> colors;
  final double baseOpacity;
  final double dynamicOpacity;

  const BlobConfig({
    required this.colors,
    this.baseOpacity = 0.4,
    this.dynamicOpacity = 0.2,
  });
}

class AnimatedBlobBackground extends StatefulWidget {
  final Widget child;
  final int numberOfBlobs;
  final double gravitationalPull;
  final double baseSpeed;
  final double blobSizeMultiplier;
  final double orbitRadius;
  final List<BlobConfig> blobConfigs;

  const AnimatedBlobBackground({
    super.key,
    required this.child,
    this.numberOfBlobs = 3,
    this.gravitationalPull = 1.0,
    this.baseSpeed = 1.0,
    this.blobSizeMultiplier = 0.5,
    this.orbitRadius = 0.2,
    List<BlobConfig>? blobConfigs,
  })  : blobConfigs = blobConfigs ??
            const [
              BlobConfig(colors: [Colors.purple, Colors.transparent]),
              BlobConfig(colors: [Colors.blue, Colors.transparent]),
              BlobConfig(colors: [Colors.indigo, Colors.transparent]),
            ],
        assert(blobConfigs == null || blobConfigs.length >= numberOfBlobs,
            'Must provide at least as many blob configs as number of blobs');

  @override
  State<AnimatedBlobBackground> createState() => _AnimatedBlobBackgroundState();
}

class _AnimatedBlobBackgroundState extends State<AnimatedBlobBackground>
    with TickerProviderStateMixin {
  late final List<AnimationController> _controllers;
  late final List<Animation<double>> _animations;
  late final List<Animation<double>> _secondaryAnimations;
  late final List<Animation<double>> _tertiaryAnimations;

  @override
  void initState() {
    super.initState();

    // Primary controllers for main orbital movement
    _controllers = List.generate(
      widget.numberOfBlobs,
      (index) => AnimationController(
        duration: Duration(
            milliseconds: (12000 / widget.baseSpeed).round() + index * 3000),
        vsync: this,
      )..repeat(), // Start immediately with repeat
    );

    // Secondary controllers for complex movement
    final secondaryControllers = List.generate(
      widget.numberOfBlobs,
      (index) => AnimationController(
        duration: Duration(
            milliseconds: (8000 / widget.baseSpeed).round() + index * 2000),
        vsync: this,
      )..repeat(), // Start immediately with repeat
    );

    // Tertiary controllers for size pulsing
    final tertiaryControllers = List.generate(
      widget.numberOfBlobs,
      (index) => AnimationController(
        duration: Duration(
            milliseconds: (15000 / widget.baseSpeed).round() + index * 1500),
        vsync: this,
      )..repeat(), // Start immediately with repeat
    );

    // Custom curved animations for smoother transitions
    _animations = _controllers.map((controller) {
      return CurvedAnimation(
        parent: controller,
        curve: const SmoothCurve(),
      );
    }).toList();

    _secondaryAnimations = secondaryControllers.map((controller) {
      return CurvedAnimation(
        parent: controller,
        curve: const SmoothCurve(),
      );
    }).toList();

    _tertiaryAnimations = tertiaryControllers.map((controller) {
      return CurvedAnimation(
        parent: controller,
        curve: const SmoothCurve(),
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

  Offset _calculateBlobPosition(double primaryValue, double secondaryValue,
      double tertiaryValue, int index, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    final baseRadius = math.min(size.width, size.height) * widget.orbitRadius;
    final secondaryRadius = baseRadius * widget.gravitationalPull * 0.3;

    // Smooth continuous rotation
    final primaryAngle = primaryValue * 2 * math.pi +
        (2 * math.pi / widget.numberOfBlobs * index);
    final secondaryAngle = secondaryValue * 4 * math.pi;

    // Add smooth tertiary movement
    final tertiaryOffset = math.sin(tertiaryValue * 2 * math.pi) *
        (baseRadius * 0.15 * widget.gravitationalPull);

    final x = centerX +
        math.cos(primaryAngle) * (baseRadius + tertiaryOffset) +
        math.cos(secondaryAngle) * secondaryRadius;

    final y = centerY +
        math.sin(primaryAngle) * (baseRadius + tertiaryOffset) +
        math.sin(secondaryAngle) * secondaryRadius;

    // Smooth vertical oscillation
    final oscillation = math.sin(primaryValue * 4 * math.pi) *
        (size.height * 0.03 * widget.gravitationalPull);

    return Offset(x, y + oscillation);
  }

  double _calculateBlobSize(Size size, double tertiaryValue) {
    final baseSize =
        math.min(size.width, size.height) * widget.blobSizeMultiplier;
    // Add subtle size pulsing
    final pulseFactor = 1.0 + (math.sin(tertiaryValue * 2 * math.pi) * 0.1);
    return baseSize * pulseFactor;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        ...List.generate(widget.numberOfBlobs, (index) {
          final config = widget.blobConfigs[index % widget.blobConfigs.length];

          return AnimatedBuilder(
            animation: Listenable.merge([
              _animations[index],
              _secondaryAnimations[index],
              _tertiaryAnimations[index],
            ]),
            builder: (context, child) {
              final position = _calculateBlobPosition(
                _animations[index].value,
                _secondaryAnimations[index].value,
                _tertiaryAnimations[index].value,
                index,
                size,
              );

              final blobSize =
                  _calculateBlobSize(size, _tertiaryAnimations[index].value);
              final dynamicOpacity = config.baseOpacity +
                  (_animations[index].value * config.dynamicOpacity);

              return Positioned(
                left: position.dx - (blobSize / 2),
                top: position.dy - (blobSize / 2),
                child: Container(
                  width: blobSize,
                  height: blobSize,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: config.colors
                          .map((color) => color.withOpacity(
                              color == Colors.transparent
                                  ? 0.0
                                  : dynamicOpacity))
                          .toList(),
                      stops: const [0.2, 1.0],
                    ),
                    borderRadius: BorderRadius.circular(blobSize / 2),
                  ),
                ),
              );
            },
          );
        }),
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

// Custom curve for smooth looping animations
class SmoothCurve extends Curve {
  const SmoothCurve();

  @override
  double transform(double t) {
    // Using sine function for smooth continuous motion
    return (1 - math.cos(t * 2 * math.pi)) / 2;
  }
}
