import 'package:flutter/material.dart';

class HoverEffect extends StatefulWidget {
  final Widget childA;
  final Widget childB;

  const HoverEffect({
    super.key,
    required this.childA,
    required this.childB,
  });

  @override
  State<HoverEffect> createState() => _HoverEffectState();
}

class _HoverEffectState extends State<HoverEffect> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Stack(
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isHovered ? 0.0 : 1.0,
            child: widget.childA,
          ),
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: isHovered ? 1.0 : 0.0,
            child: widget.childB,
          ),
        ],
      ),
    );
  }
}
