import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nakul_dev/functions/hover%20effect.dart';
import 'package:nakul_dev/functions/launch_url.dart';
import 'package:nakul_dev/styles/styles.dart';

class AnimatedDialog extends StatefulWidget {
  const AnimatedDialog({super.key});

  @override
  State<AnimatedDialog> createState() => _AnimatedDialogState();
}

class _AnimatedDialogState extends State<AnimatedDialog> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutExpo,
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var isDeviceWidth = MediaQuery.of(context).size.width;
    return ScaleTransition(
      scale: _scaleAnimation,
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: AlertDialog(
          elevation: 5,
          backgroundColor: SecondaryColor.withOpacity(0.95),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Softer rounded corners
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDeviceWidth <= 500
                    ? Text(
                        'New Look, New Portfolio!',
                        style: GoogleFonts.chakraPetch(textStyle: textStyles.B, fontSize: 15),
                      )
                    : Text(
                        'Check Out My Redesigned Portfolio!',
                        style: GoogleFonts.chakraPetch(textStyle: textStyles.B, fontSize: 18),
                      ),
                GestureDetector(
                  onTap: () {
                    _controller.reverse().then((_) {
                      Navigator.of(context).pop();
                    });
                  },
                  child: HoverEffect(
                    childA: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: FontBg,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          Icons.close,
                          color: SecondaryColor,
                          size: 22 - 1,
                        ),
                      ),
                    ),
                    childB: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.redAccent,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2),
                        child: Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 22 - 1,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "I've transformed my old website with a fresh new design. Visit now to explore the updates!",
                style: GoogleFonts.chakraPetch(
                    textStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                )),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  urlLaunch("https://nakuldev.vercel.app/");
                  _controller.reverse().then((_) {
                    Navigator.of(context).pop();
                  });
                },
                style: ElevatedButton.styleFrom(
                  // overlayColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ).copyWith(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Colors.lightBlueAccent; // Hover color
                      }
                      return Colors.deepPurpleAccent;
                    },
                  ),
                ),
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  size: 20,
                  color: Colors.white,
                ),
                label: Text(
                  'Explore Now',
                  style: GoogleFonts.chakraPetch(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
