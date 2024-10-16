import 'package:Nakul_Dev/nakuldev_portfolio/desktop.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/mobile.dart';
import 'package:Nakul_Dev/functions/responsive_layout.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/tablet.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout extends StatelessWidget {
  const toResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktopBody: desktop(),
      mobileBody: mobile(),
      tabletBody: tablet(),
    );
  }
}
