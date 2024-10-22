import 'package:Nakul_Dev/functions/animated_Grid_Dot.dart';
import 'package:Nakul_Dev/test_dart_files/dots%20with%20animation.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math' as math;

class CursorTracker extends StatefulWidget {
  final Widget child;
  final List<double> delayFactors;
  final List<List<Color>> gradientColors;
  final List<double> circleSizes; // New parameter for controlling circle sizes

  const CursorTracker({
    super.key,
    required this.child,
    this.delayFactors = const [
      0.2,
      0.3,
      0.4
    ],
    this.gradientColors = const [
      [
        Colors.yellowAccent,
        Colors.redAccent
      ],
      [
        Color.fromARGB(170, 255, 255, 0),
        Color.fromARGB(170, 255, 82, 82)
      ],
      [
        Color.fromARGB(99, 0, 0, 0),
        Color.fromARGB(99, 0, 0, 0)
      ],
    ],
    this.circleSizes = const [
      200,
      150,
      50,
    ], // Default sizes for three circles
  }) : assert(delayFactors.length == gradientColors.length && delayFactors.length == circleSizes.length, 'Number of delay factors, gradient colors, and circle sizes must match');

  @override
  State<CursorTracker> createState() => _CursorTrackerState();
}

class _CursorTrackerState extends State<CursorTracker> with SingleTickerProviderStateMixin {
  List<Offset> _currentPositions = [];
  Offset _targetPosition = Offset.zero;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(days: 1),
    )..repeat();

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

          return Stack(
            children: [
              const AnimatedGridDotBackground(),
              if (_currentPositions.any((pos) => pos != Offset.zero))
                Positioned.fill(
                  child: IgnorePointer(
                    child: Stack(
                      children: [
                        // Generate circles with different delays, colors, and sizes
                        for (int i = 0; i < _currentPositions.length; i++)
                          Positioned(
                            left: _currentPositions[i].dx - widget.circleSizes[i] / 2,
                            top: _currentPositions[i].dy - widget.circleSizes[i] / 2,
                            child: Container(
                              width: widget.circleSizes[i],
                              height: widget.circleSizes[i],
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: widget.gradientColors[i],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
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
              child!,
            ],
          );
        },
        child: widget.child,
      ),
    );
  }
}
