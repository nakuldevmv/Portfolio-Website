import 'package:flutter/material.dart';

class SimpleHover extends StatefulWidget {
  final Widget child;
  final Color? hoverColor;
  final BorderRadius borderRadius;
  final dynamic margin;
  final Color? color;

  const SimpleHover({
    super.key,
    required this.child,
    this.hoverColor,
    required this.borderRadius,
    required this.margin,
    this.color,
  });

  @override
  State<SimpleHover> createState() => _SimpleHoverState();
}

class _SimpleHoverState extends State<SimpleHover> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: widget.margin,
        decoration: BoxDecoration(
          color: isHovered
              ? widget.hoverColor ?? Colors.grey[400]
              : widget.color ?? Colors.transparent,
          borderRadius: widget.borderRadius,
        ),
        child: widget.child,
      ),
    );
  }
}
