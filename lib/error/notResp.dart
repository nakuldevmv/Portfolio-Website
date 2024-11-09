// Custom function for URL handling
import 'package:nakul_dev/functions/Mouse_Tracker.dart';
import 'package:nakul_dev/functions/animated_blob.dart';
import 'package:nakul_dev/functions/launch_url.dart';
import 'package:nakul_dev/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class NotResp extends StatelessWidget {
  const NotResp({super.key});

  TextStyle get titleStyle => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  TextStyle get messageStyle => const TextStyle(
        fontSize: 16,
        color: Colors.white70,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBlobBackground(
        numberOfBlobs: 4,
        gravitationalPull: 1.0,
        baseSpeed: 0.5,
        blobSizeMultiplier: 1,
        orbitRadius: 0.2,
        child: CursorTracker(
          child: Stack(
            children: [
              // const AnimatedGridDotBackground(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/svg/404.svg',
                        color: Colors.white,
                        height: 200,
                      ),
                      const SizedBox(height: 24),
                      Text(
                        'Oops! Page Not Found',
                        style: titleStyle,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'The page you are looking for might have been removed \n'
                        'or is temporarily unavailable.',
                        textAlign: TextAlign.center,
                        style: messageStyle,
                      ),
                      const SizedBox(height: 12),
                      GestureDetector(
                        onTap: () {
                          urlLaunch("https://www.linkedin.com/in/nakuldevmv/");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: ContactMe_containerStyle_tablet.color,
                            borderRadius: ContactMe_containerStyle_tablet.borderRadius,
                          ),
                          padding: ContactMe_containerStyle_tablet.padding,
                          margin: ContactMe_containerStyle_tablet.margin,
                          width: 135,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                                width: 30,
                                child: SvgPicture.asset(
                                  "assets/svg/linkedin.svg",
                                  // color: textStyles.B.color,
                                ),
                              ),
                              const SizedBox(width: 10), // Add some spacing
                              Text(
                                "LinkedIn", // Corrected spelling
                                style: GoogleFonts.chakraPetch(textStyle: textStyles.P2B),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
