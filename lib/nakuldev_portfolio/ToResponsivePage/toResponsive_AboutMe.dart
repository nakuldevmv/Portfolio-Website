import 'package:nakul_dev/functions/Mouse_Tracker.dart';
import 'package:nakul_dev/functions/animated_blob.dart';
import 'package:nakul_dev/functions/navigation_bar.dart';
import 'package:nakul_dev/nakuldev_portfolio/pages/about_page_T_M_D/about_me.dart';

import 'package:nakul_dev/functions/responsive_layout.dart';
import 'package:nakul_dev/nakuldev_portfolio/pages/about_page_T_M_D/about_me_mobile.dart';
import 'package:nakul_dev/nakuldev_portfolio/pages/about_page_T_M_D/about_me_tablet.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout_AboutMe extends StatelessWidget {
  final int currentIndex;
  const toResponsiveLayout_AboutMe({super.key, this.currentIndex = 2});

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
          child: NavigationWrapper(
            currentIndex: currentIndex,
            child: const ResponsiveLayout(
              mobileBody: AboutMeMobile(),
              tabletBody: AboutMeTablet(),
              desktopBody: AboutMe(),
            ),
          ),
        ),
      ),
    );
  }
}
