import 'package:nakul_dev/functions/Mouse_Tracker.dart';
import 'package:nakul_dev/functions/animated_blob.dart';
import 'package:nakul_dev/functions/navigation_bar.dart';
import 'package:nakul_dev/nakuldev_portfolio/pages/contact_page_T_M_D/ContactMe_mobile.dart';
import 'package:nakul_dev/nakuldev_portfolio/pages/contact_page_T_M_D/ContactMe_tablet.dart';
import 'package:nakul_dev/functions/responsive_layout.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout_contactMe extends StatelessWidget {
  final int currentIndex;
  const toResponsiveLayout_contactMe({super.key, this.currentIndex = 3});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: screenWidth >= 600
          ?
          // AnimatedBlobBackground(
          //     numberOfBlobs: 4,
          //     gravitationalPull: 1.0,
          //     baseSpeed: 0.5,
          //     blobSizeMultiplier: 1,
          //     orbitRadius: 0.2,
          //     child:
          CursorTracker(
              child: NavigationWrapper(
                currentIndex: currentIndex,
                child: const ResponsiveLayout(
                  mobileBody: ContactMe_mobile(),
                  tabletBody: ContactMe_tablet(),
                  desktopBody: ContactMe_tablet(),
                ),
              ),
              // ),
            )
          :
          // AnimatedBlobBackground(
          //     numberOfBlobs: 4,
          //     gravitationalPull: 1.0,
          //     baseSpeed: 0.5,
          //     blobSizeMultiplier: 1,
          //     orbitRadius: 0.2,
          //     child:
          NavigationWrapper(
              currentIndex: currentIndex,
              child: const ResponsiveLayout(
                mobileBody: ContactMe_mobile(),
                tabletBody: ContactMe_tablet(),
                desktopBody: ContactMe_tablet(),
              ),
            ),
      // )
    );
  }
}
