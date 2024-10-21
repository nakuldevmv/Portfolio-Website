import 'package:Nakul_Dev/functions/Mouse_Tracker.dart';
import 'package:Nakul_Dev/functions/animated_Grid_Dot.dart';
import 'package:Nakul_Dev/functions/navigation_bar.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/desktop.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/mobile.dart';
import 'package:Nakul_Dev/functions/responsive_layout.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/tablet.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout extends StatelessWidget {
  final int currentIndex;
  const toResponsiveLayout({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CursorTracker(
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
    // return Scaffold(
    //   body: Stack(
    //     children: [
    //       const cursorTracker(),
    //   NavigationWrapper(
    //     showNavBar: false,
    //     currentIndex: currentIndex,
    //     child: const ResponsiveLayout(
    //       desktopBody: desktop(),
    //       mobileBody: mobile(),
    //       tabletBody: tablet(),
    //     ),
    //   ),
    // ],
    //   ),
    // );
  }
}
