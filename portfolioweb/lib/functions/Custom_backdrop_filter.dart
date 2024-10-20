import 'dart:ui';

import 'package:Nakul_Dev/styles/styles.dart';
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  final dynamic margin;
  const CustomBox({super.key, required this.child, required this.borderRadius, required this.margin});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
