import 'package:flutter_animate/flutter_animate.dart';
import 'package:nakul_dev/functions/Alert_Box.dart';
import 'package:nakul_dev/functions/Mouse_Tracker.dart';
import 'package:nakul_dev/functions/navigation_bar.dart';
import 'package:nakul_dev/nakuldev_portfolio/desktop.dart';
import 'package:nakul_dev/nakuldev_portfolio/mobile.dart';
import 'package:nakul_dev/functions/responsive_layout.dart';
import 'package:nakul_dev/nakuldev_portfolio/tablet.dart';
import 'package:nakul_dev/functions/animated_blob.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout extends StatefulWidget {
  final int currentIndex;
  const toResponsiveLayout({super.key, this.currentIndex = 0});

  @override
  State<toResponsiveLayout> createState() => _toResponsiveLayoutState();
}

class _toResponsiveLayoutState extends State<toResponsiveLayout> {
  // I have Comment out this code to temporarily disable the alert box
  // I will enable it once I have completed the redesigned website.
  // @override
  // void initState() {
  //   super.initState();
  //   future_delay_dialog(5);
  // }

  // Future<Null> future_delay_dialog(int duration_seconds) {
  //   return Future.delayed(Duration(seconds: duration_seconds), () {
  //     if (mounted) {
  //       // Display the dialog with a builder function
  //       showDialog(
  //         context: context,
  //         barrierDismissible: false, // Prevent closing by tapping outside
  //         builder: (BuildContext context) {
  //           return const AnimatedDialog();
  //         },
  //       );
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: screenWidth >= 600
          ? AnimatedBlobBackground(
              numberOfBlobs: 4,
              gravitationalPull: 1.0,
              baseSpeed: 0.5,
              blobSizeMultiplier: 1,
              orbitRadius: 0.2,
              child: CursorTracker(
                child: NavigationWrapper(
                  showNavBar: false,
                  currentIndex: widget.currentIndex,
                  child: const ResponsiveLayout(
                    desktopBody: desktop(),
                    mobileBody: mobile(),
                    tabletBody: tablet(),
                  ),
                ),
              ),
            )
          : AnimatedBlobBackground(
              numberOfBlobs: 4,
              gravitationalPull: 1.0,
              baseSpeed: 0.5,
              blobSizeMultiplier: 1,
              orbitRadius: 0.2,
              child: NavigationWrapper(
                showNavBar: false,
                currentIndex: widget.currentIndex,
                child: const ResponsiveLayout(
                  desktopBody: desktop(),
                  mobileBody: mobile(),
                  tabletBody: tablet(),
                ),
              ),
            ),
    );
  }
}
