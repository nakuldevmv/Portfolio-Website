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
        backgroundColor: Colors.white,
        body: Center(
          child: GridDotBackground(),
        ),
      ),
    );
  }
}

class GridDotBackground extends StatefulWidget {
  const GridDotBackground({super.key});

  @override
  _GridDotBackgroundState createState() => _GridDotBackgroundState();
}

class _GridDotBackgroundState extends State<GridDotBackground> {
  Offset? _hoverPosition; // Track the current hover position

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _hoverPosition = event.localPosition;
        });
      },
      onExit: (_) {
        setState(() {
          _hoverPosition = null; // Reset on exit
        });
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: _buildDotGrid(constraints.biggest),
          );
        },
      ),
    );
  }

  List<Widget> _buildDotGrid(Size size) {
    const double spacing = 40.0;
    final List<Widget> dots = [];

    for (double x = 0; x < size.width; x += spacing) {
      for (double y = 0; y < size.height; y += spacing) {
        dots.add(Positioned(
          left: x,
          top: y,
          child: AnimatedDot(
            position: Offset(x, y),
            hoverPosition: _hoverPosition,
          ),
        ));
      }
    }
    return dots;
  }
}

class AnimatedDot extends StatelessWidget {
  final Offset position;
  final Offset? hoverPosition;

  const AnimatedDot({
    super.key,
    required this.position,
    required this.hoverPosition,
  });

  @override
  Widget build(BuildContext context) {
    const double radius = 75.0; // Radius of hover effect area
    const double dotSize = 5.0;

    final bool isInHoverArea = hoverPosition != null && (hoverPosition! - position).distance <= radius;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: dotSize,
      height: dotSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isInHoverArea ? Colors.blue : Colors.black.withOpacity(0.6),
      ),
    );
  }
}
