import 'package:flutter/material.dart';

class AnimatedGridDotBackground extends StatefulWidget {
  const AnimatedGridDotBackground({super.key});

  @override
  _AnimatedGridDotBackgroundState createState() =>
      _AnimatedGridDotBackgroundState();
}

class _AnimatedGridDotBackgroundState extends State<AnimatedGridDotBackground>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15), // 20 seconds total
    );

    _animation = TweenSequence<double>([
      // First half: 0.0 to 0.5 (10 seconds)
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.0, end: 0.5),
        weight: 1,
      ),
      // Second half: 0.5 to 1.0 (10 seconds)
      TweenSequenceItem(
        tween: Tween<double>(begin: 0.5, end: 1.0),
        weight: 1,
      ),
    ]).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear, // Smooth linear progression
    ));

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return CustomPaint(
          size: MediaQuery.of(context).size,
          painter: AnimatedDotGridPainter(_animation.value),
        );
      },
    );
  }
}

class AnimatedDotGridPainter extends CustomPainter {
  final double animationValue;
  final double spacing = 50;
  final double dotRadius = 3;
  final List<Color> gradientColors = [
    const Color.fromARGB(255, 125, 149, 255), // Blue
    const Color.fromARGB(255, 255, 255, 255), // Blue
    const Color.fromARGB(255, 125, 149, 255), // Blue
  ];

  AnimatedDotGridPainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {
    // Determine the phase: first half or second half
    bool isFirstHalf = animationValue < 0.5;
    double normalizedValue = isFirstHalf
        ? animationValue * 2 // Normalize 0.0 to 0.5 → 0.0 to 1.0
        : (animationValue - 0.5) * 2; // Normalize 0.5 to 1.0 → 0.0 to 1.0

    for (double x = 0; x < size.width; x += spacing) {
      for (double y = 0; y < size.height; y += spacing) {
        double gradientPosition;

        if (isFirstHalf) {
          // First half: Bottom-left to top-right
          gradientPosition = ((x / size.width) + (y / size.height)) / 2;
        } else {
          // Second half: Bottom-right to top-left
          gradientPosition =
              (((size.width - x) / size.width) + (y / size.height)) / 2;
        }

        // Adjust gradient position with the normalized value
        gradientPosition = (gradientPosition + normalizedValue) % 1.0;

        // Interpolate colors between gradient stops
        Color dotColor;
        if (gradientPosition < 0.5) {
          dotColor = Color.lerp(
              gradientColors[0], gradientColors[1], gradientPosition * 2)!;
        } else {
          dotColor = Color.lerp(gradientColors[1], gradientColors[2],
              (gradientPosition - 0.5) * 2)!;
        }

        final Paint paint = Paint()..color = dotColor.withOpacity(0.6);
        canvas.drawCircle(Offset(x, y), dotRadius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
