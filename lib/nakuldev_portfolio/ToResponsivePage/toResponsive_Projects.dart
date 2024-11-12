import 'package:nakul_dev/functions/Mouse_Tracker.dart';
import 'package:nakul_dev/functions/animated_blob.dart';
import 'package:nakul_dev/functions/navigation_bar.dart';
import 'package:nakul_dev/nakuldev_portfolio/pages/project_page_T_M_D/my_projects.dart';
import 'package:nakul_dev/nakuldev_portfolio/pages/project_page_T_M_D/myProject_mobile.dart';
import 'package:nakul_dev/nakuldev_portfolio/pages/project_page_T_M_D/myProject_tablet.dart';
import 'package:nakul_dev/functions/responsive_layout.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout_project extends StatelessWidget {
  final int currentIndex;
  final int initialIndex; // Accept the initial index

  const toResponsiveLayout_project({super.key, required this.initialIndex, this.currentIndex = 1});

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
            child: ResponsiveLayout(
              desktopBody: myProject(initialIndex: initialIndex),
              mobileBody: myProject_mobile(initialIndex: initialIndex),
              tabletBody: myProject_tablet(initialIndex: initialIndex),
            ),
          ),
        ),
      ),
    );
  }
}
