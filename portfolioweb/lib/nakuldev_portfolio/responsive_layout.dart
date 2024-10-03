import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget desktopBody;
  final Widget tabletBody;
  final Widget mobileBody;
  const ResponsiveLayout({
    super.key,
    required this.desktopBody,
    required this.mobileBody,
    required this.tabletBody,
  });

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        if (constrains.maxWidth < 600) {
          return widget.mobileBody;
        } else if (constrains.maxWidth < 1200) {
          return widget.tabletBody;
        } else {
          return widget.desktopBody;
        }
      },
    );
  }
}
