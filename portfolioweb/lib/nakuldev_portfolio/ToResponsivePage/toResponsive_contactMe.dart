import 'package:Nakul_Dev/nakuldev_portfolio/pages/contact_page_T_M_D/ContactMe_mobile.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/pages/contact_page_T_M_D/ContactMe_tablet.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/pages/contact_page_T_M_D/contact_me.dart';
import 'package:Nakul_Dev/functions/responsive_layout.dart';
import 'package:flutter/material.dart';

class toResponsiveLayout_contactMe extends StatelessWidget {
  const toResponsiveLayout_contactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      desktopBody: ContactMe(),
      mobileBody: ContactMe_mobile(),
      tabletBody: ContactMe_tablet(),
    );
  }
}
