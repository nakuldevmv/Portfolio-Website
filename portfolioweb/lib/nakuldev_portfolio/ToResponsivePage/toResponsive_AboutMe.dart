import 'package:Nakul_Dev/functions/navigation_bar.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/pages/about_page_T_M_D/about_me.dart';

import 'package:Nakul_Dev/functions/responsive_layout.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout_AboutMe extends StatelessWidget {
  final int currentIndex;
  const toResponsiveLayout_AboutMe({super.key, this.currentIndex = 2});

  @override
  Widget build(BuildContext context) {
    return NavigationWrapper(
      currentIndex: currentIndex,
      child: const ResponsiveLayout(
        mobileBody: AboutMe(),
        tabletBody: AboutMe(),
        desktopBody: AboutMe(),
      ),
    );
  }
}
