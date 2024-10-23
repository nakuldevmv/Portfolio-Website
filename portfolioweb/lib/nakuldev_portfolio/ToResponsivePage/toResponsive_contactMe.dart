import 'package:Nakul_Dev/functions/Mouse_Tracker.dart';
import 'package:Nakul_Dev/functions/animated_blob.dart';
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
      body: AnimatedBlobBackground(
        numberOfBlobs: 4,
        gravitationalPull: 1.0,
        baseSpeed: 0.5,
        blobSizeMultiplier: 1,
        orbitRadius: 0.2,
        blobConfigs: const [
          BlobConfig(colors: [
            Colors.purple,
            Colors.transparent
          ]),
          BlobConfig(colors: [
            Colors.blue,
            Colors.transparent
          ]),
          BlobConfig(colors: [
            Colors.purpleAccent,
            Colors.transparent
          ]),
          BlobConfig(colors: [
            Colors.indigo,
            Colors.transparent
          ]),
        ],
        child: CursorTracker(
          child: NavigationWrapper(
            currentIndex: currentIndex,
            child: const ResponsiveLayout(
              mobileBody: ContactMe_mobile(),
              tabletBody: ContactMe_tablet(),
              desktopBody: ContactMe_tablet(),
            ),
          ),
        ),
      ),
    );
  }
}
