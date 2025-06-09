import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:nakul_dev/functions/Simple_Hover.dart';

class CustomBox extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  final dynamic margin;
  final bool isHover;
  final Color? hoverColor;
  final Color? color;

  const CustomBox({
    super.key,
    required this.child,
    required this.borderRadius,
    this.hoverColor,
    this.color,
    this.margin = const EdgeInsets.all(0),
    this.isHover = false,
  });

  @override
  Widget build(BuildContext context) {
    return isHover
        ? SimpleHover(
            color: color,
            hoverColor: hoverColor,
            borderRadius: borderRadius,
            margin: margin,
            child: ClipRRect(
              borderRadius: borderRadius,
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3), child: child),
            ),
          )
        : Padding(
            padding: margin,
            child: ClipRRect(
              borderRadius: borderRadius,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                child: child,
              ),
            ),
          );
  }
}
