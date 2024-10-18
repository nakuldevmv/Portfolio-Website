import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black, // Background color
        body: Center(
          child: GridDotBackground(),
        ),
      ),
    );
  }
}

class GridDotBackground extends StatelessWidget {
  const GridDotBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: MediaQuery.of(context).size, // Makes it full-screen
      painter: DotGridPainter(),
    );
  }
}

class DotGridPainter extends CustomPainter {
  final double spacing = 50.0; // Distance between dots
  final double dotRadius = 2.0; // Radius of each dot
  final Color dotColor = Colors.grey.withOpacity(0.6); // Dot color with transparency

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = dotColor;

    // Loop through the grid rows and columns
    for (double x = 0; x < size.width; x += spacing) {
      for (double y = 0; y < size.height; y += spacing) {
        canvas.drawCircle(Offset(x, y), dotRadius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
