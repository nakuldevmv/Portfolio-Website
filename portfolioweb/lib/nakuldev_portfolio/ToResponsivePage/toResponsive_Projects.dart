import 'package:Nakul_Dev/functions/Mouse_Tracker.dart';
import 'package:Nakul_Dev/functions/animated_Grid_Dot.dart';
import 'package:Nakul_Dev/functions/navigation_bar.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/pages/project_page_T_M_D/my_projects.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/pages/project_page_T_M_D/myProject_mobile.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/pages/project_page_T_M_D/myProject_tablet.dart';
import 'package:Nakul_Dev/functions/responsive_layout.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout_project extends StatelessWidget {
  final int currentIndex;
  final int initialIndex; // Accept the initial index

  const toResponsiveLayout_project({super.key, required this.initialIndex, this.currentIndex = 1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CursorTracker(
        child: NavigationWrapper(
          currentIndex: currentIndex,
          child: ResponsiveLayout(
            desktopBody: myProject(initialIndex: initialIndex),
            mobileBody: myProject_mobile(initialIndex: initialIndex),
            tabletBody: myProject_tablet(initialIndex: initialIndex),
          ),
        ),
      ),
    );
  }
}
