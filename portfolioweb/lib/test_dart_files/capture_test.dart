import 'package:flutter/material.dart';
import 'dart:ui';
import 'dart:math' as math;

class CursorTracker extends StatefulWidget {
  final Widget child;
  final double delayFactor;
  const CursorTracker({
    super.key,
    required this.child,
    this.delayFactor = 0.1,
  });

  @override
  State<CursorTracker> createState() => _CursorTrackerState();
}

class _CursorTrackerState extends State<CursorTracker> with SingleTickerProviderStateMixin {
  Offset _currentPosition = Offset.zero;
  Offset _targetPosition = Offset.zero;
  static const double _circleSize = 100;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(days: 1), // Long duration, will be running continuously
    )..repeat();
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

  Offset _interpolatePosition(double t) {
    double dx = _lerp(_currentPosition.dx, _targetPosition.dx, t);
    double dy = _lerp(_currentPosition.dy, _targetPosition.dy, t);
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
          double t = math.min(widget.delayFactor, 1.0);
          _currentPosition = _interpolatePosition(t);
          return Stack(
            children: [
              // Cursor tracker layer
              Positioned.fill(
                child: IgnorePointer(
                  child: Stack(
                    children: [
                      Positioned(
                        left: _currentPosition.dx - _circleSize / 2,
                        top: _currentPosition.dy - _circleSize / 2,
                        child: Container(
                          width: _circleSize,
                          height: _circleSize,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Colors.yellowAccent,
                                Colors.redAccent
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                      Positioned.fill(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(color: Colors.black.withOpacity(0.3)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Child widget layer
              child!,
            ],
          );
        },
        child: widget.child,
      ),
    );
  }
}
