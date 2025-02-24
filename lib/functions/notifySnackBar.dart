import 'package:nakul_dev/styles/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedSnackBar extends StatefulWidget {
  final String message;
  final Duration duration;

  const AnimatedSnackBar({
    super.key,
    required this.message,
    this.duration = const Duration(seconds: 4),
  });

  @override
  State<AnimatedSnackBar> createState() => _AnimatedSnackBarState();
}

class _AnimatedSnackBarState extends State<AnimatedSnackBar> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    );

    _animationController.forward();

    Future.delayed(widget.duration - const Duration(milliseconds: 400), () {
      if (mounted) {
        _animationController.reverse();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20, left: 13.1, right: 13.1),
        child: Material(
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 28, 28, 28).withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromARGB(255, 28, 28, 28).withOpacity(0.95),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 5,
                bottom: 5,
              ),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    const Icon(
                      Icons.info_outline_rounded,
                      color: Colors.white,
                      size: 24,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: AutoSizeText(
                        widget.message,
                        minFontSize: 12,
                        maxFontSize: 22,
                        maxLines: 2,
                        style: GoogleFonts.chakraPetch(
                          textStyle: textStyles.P2B.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void notifySnackBar(BuildContext context, String message) {
  // Remove any existing snackbars
  ScaffoldMessenger.of(context).clearSnackBars();

  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: AnimatedSnackBar(
        message: message,
        duration: const Duration(seconds: 4),
      ),
    ),
  );

  // Show the snackbar
  overlay.insert(overlayEntry);

  // Remove the snackbar after duration
  Future.delayed(const Duration(seconds: 4), () {
    overlayEntry.remove();
  });
}
