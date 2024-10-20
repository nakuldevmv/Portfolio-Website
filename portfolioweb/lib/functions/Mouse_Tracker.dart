import 'package:flutter/material.dart';
import 'dart:ui';

class cursorTracker extends StatefulWidget {
  const cursorTracker({super.key});

  @override
  State<cursorTracker> createState() => _cursorTrackerState();
}

class _cursorTrackerState extends State<cursorTracker> with SingleTickerProviderStateMixin {
  Offset _circlePosition = Offset.zero;
  static const double _circleSize = 100;

  void _updateCirclePosition(Offset position) {
    setState(() {
      // Directly set the position without lerping for immediate response
      _circlePosition = position;
      print(_circlePosition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      hitTestBehavior: HitTestBehavior.translucent, // Allows events to pass through invisible parts

      onHover: (event) => _updateCirclePosition(event.localPosition),
      child: Stack(
        children: [
          // Animated circle that follows the mouse
          _circlePosition != const Offset(0, 0)
              ? AnimatedPositioned(
                  duration: const Duration(milliseconds: 600), // Short duration for quick response
                  curve: Curves.easeOutExpo, // Snappy curve for quick movement
                  left: _circlePosition.dx - _circleSize / 2,
                  top: _circlePosition.dy - _circleSize / 2,
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
                )
              : const Offstage(), // Blur effect overlay
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),
        ],
      ),
    );
  }
}
