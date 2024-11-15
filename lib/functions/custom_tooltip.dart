import 'package:flutter/material.dart';
import 'package:nakul_dev/styles/styles.dart';

class Custom_tooltip extends StatelessWidget {
  const Custom_tooltip({super.key, required this.message, required this.child});
  final dynamic message;
  final dynamic child;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      decoration: BoxDecoration(
          color: const Color.fromARGB(229, 37, 37, 37),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ]),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      message: message,
      child: child,
      textStyle: TextStyle(color: FontColor, fontWeight: FontWeight.bold),
    );
  }
}
