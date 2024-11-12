import 'package:nakul_dev/functions/Mouse_Tracker.dart';
import 'package:nakul_dev/functions/navigation_bar.dart';
import 'package:nakul_dev/nakuldev_portfolio/desktop.dart';
import 'package:nakul_dev/nakuldev_portfolio/mobile.dart';
import 'package:nakul_dev/functions/responsive_layout.dart';
import 'package:nakul_dev/nakuldev_portfolio/tablet.dart';
import 'package:nakul_dev/functions/animated_blob.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout extends StatelessWidget {
  final int currentIndex;
  const toResponsiveLayout({super.key, this.currentIndex = 0});

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
                  currentIndex: currentIndex,
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
                currentIndex: currentIndex,
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
