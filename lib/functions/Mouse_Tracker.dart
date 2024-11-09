import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math' as math;

class CursorTracker extends StatefulWidget {
  final Widget child;
  final List<double> delayFactors;
  final List<double> circleSizes; // Controls the sizes of circles
  final Duration gradientDuration; // New attribute for gradient speed

  const CursorTracker({
    super.key,
    required this.child,
    this.delayFactors = const [
      0.1,
      0.2,
      0.4
    ],
    this.circleSizes = const [
      170,
      64,
      15
    ], // Sizes for circles
    this.gradientDuration = const Duration(seconds: 30), // Default duration
  }) : assert(delayFactors.length == circleSizes.length, 'Mismatch in delay factors and circle sizes.');

  @override
  State<CursorTracker> createState() => _CursorTrackerState();
}

class _CursorTrackerState extends State<CursorTracker> with SingleTickerProviderStateMixin {
  List<Offset> _currentPositions = [];
  Offset _targetPosition = Offset.zero;
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  // final List<Color> _gradientColors = [
  //   Color.fromARGB(
  //     255,
  //     Random().nextInt(256),
  //     Random().nextInt(256),
  //     Random().nextInt(256),
  //   ),
  //   Color.fromARGB(
  //     255,
  //     Random().nextInt(256),
  //     Random().nextInt(256),
  //     Random().nextInt(256),
  //   ),
  // ];

  final List<Color> _gradientColors = [
    const Color.fromARGB(255, 0, 255, 225),
    const Color.fromARGB(255, 225, 134, 255),
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.gradientDuration, // Use the gradient duration from the attribute
    )..repeat();

    // Rotation animation from 0 to 2 * pi (full rotation)
    _rotationAnimation = Tween<double>(begin: 0, end: 2 * math.pi).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    );

    _currentPositions = List.generate(
      widget.delayFactors.length,
      (index) => Offset.zero,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateTargetPosition(Offset position) {
    setState(() {
      _targetPosition = position;
    });
  }

  Offset _interpolatePosition(double t, int index) {
    double dx = _lerp(_currentPositions[index].dx, _targetPosition.dx, t);
    double dy = _lerp(_currentPositions[index].dy, _targetPosition.dy, t);
    return Offset(dx, dy);
  }

  double _lerp(double start, double end, double t) {
    return start + (end - start) * t;
  }

  Color _getInterpolatedColor(double t) {
    // Interpolate between gradient colors
    int index = (t * (_gradientColors.length - 1)).floor();
    double localT = (t * (_gradientColors.length - 1)) - index;
    if (index >= _gradientColors.length - 1) {
      return _gradientColors.last;
    }
    return Color.lerp(_gradientColors[index], _gradientColors[index + 1], localT)!;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) => _updateTargetPosition(event.position),
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          // Update positions for all circles
          for (int i = 0; i < widget.delayFactors.length; i++) {
            double t = math.min(widget.delayFactors[i], 1.0);
            _currentPositions[i] = _interpolatePosition(t, i);
          }

          double animationProgress = (_controller.value * 9) % 9; // Animation progress for the gradient

          return Stack(
            children: [
              //AnimatedGridDotBackground() Widget should be place here - i removed it because of the performance issue for some users
              if (_currentPositions.any((pos) => pos != Offset.zero))
                Positioned.fill(
                  child: IgnorePointer(
                    child: Stack(
                      children: [
                        // Big circle with animated gradient and slow rotation
                        Positioned(
                          left: _currentPositions[0].dx - widget.circleSizes[0] / 2,
                          top: _currentPositions[0].dy - widget.circleSizes[0] / 2,
                          child: Transform.rotate(
                            angle: _rotationAnimation.value,
                            child: Container(
                              width: widget.circleSizes[0],
                              height: widget.circleSizes[0],
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    _getInterpolatedColor(animationProgress),
                                    _getInterpolatedColor((animationProgress + 1) % 9),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: _getInterpolatedColor(animationProgress).withOpacity(0.5), // Shadow color based on the gradient
                                    blurRadius: 60,
                                    spreadRadius: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(color: Colors.transparent),
                ),
              ),
              // Black outline circle

              if (_currentPositions.any((pos) => pos != Offset.zero))
                Positioned(
                  left: _currentPositions[1].dx - widget.circleSizes[1] / 2,
                  top: _currentPositions[1].dy - widget.circleSizes[1] / 2,
                  child: Container(
                    width: widget.circleSizes[1],
                    height: widget.circleSizes[1],
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              // Black dot
              if (_currentPositions.any((pos) => pos != Offset.zero))
                Positioned(
                  left: _currentPositions[2].dx - widget.circleSizes[2] / 2,
                  top: _currentPositions[2].dy - widget.circleSizes[2] / 2,
                  child: Container(
                    width: widget.circleSizes[2],
                    height: widget.circleSizes[2],
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),

              child!,
            ],
          );
        },
        child: widget.child,
      ),
    );
  }
}
