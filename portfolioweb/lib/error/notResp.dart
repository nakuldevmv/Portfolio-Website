import 'package:flutter/material.dart';

class notResp extends StatelessWidget {
  const notResp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 231, 231, 231), width: 1.0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "The website is temporarily unavailable.",
                // "Warning: This webpage is not optimized for mobile devices. Please view in full screen for a better experience.",
                // "Note: This website is currently under development for responsiveness. For the best experience, please view on a mobile device or in full-screen mode on desktop.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
