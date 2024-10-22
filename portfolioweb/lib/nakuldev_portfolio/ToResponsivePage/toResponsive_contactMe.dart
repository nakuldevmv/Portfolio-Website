import 'package:Nakul_Dev/functions/Mouse_Tracker.dart';
import 'package:Nakul_Dev/functions/animated_Grid_Dot.dart';
import 'package:Nakul_Dev/functions/navigation_bar.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/pages/contact_page_T_M_D/ContactMe_mobile.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/pages/contact_page_T_M_D/ContactMe_tablet.dart';
import 'package:Nakul_Dev/functions/responsive_layout.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout_contactMe extends StatelessWidget {
  final int currentIndex;
  const toResponsiveLayout_contactMe({super.key, this.currentIndex = 3});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CursorTracker(
        child: NavigationWrapper(
          currentIndex: currentIndex,
          child: const ResponsiveLayout(
            mobileBody: ContactMe_mobile(),
            tabletBody: ContactMe_tablet(),
            desktopBody: ContactMe_tablet(),
          ),
        ),
      ),
    );
  }
}
