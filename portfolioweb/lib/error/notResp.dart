import 'package:flutter/material.dart';

class notResp extends StatelessWidget {
  const notResp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 244, 54, 54), width: 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Text(
            "Warning: This webpage is not optimized for mobile devices. Please view in full screen for a better experience.",
            style: TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
