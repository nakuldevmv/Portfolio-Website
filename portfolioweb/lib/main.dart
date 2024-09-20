import 'package:flutter/material.dart';
import 'package:portfolioweb/nakuldev_portfolio/mobile.dart';
import 'package:portfolioweb/nakuldev_portfolio/responsive_layout.dart';
import 'package:portfolioweb/nakuldev_portfolio/tablet.dart';

import 'nakuldev_portfolio/desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: const ColorScheme.dark()),
      debugShowCheckedModeBanner: false,
      home: const desktop(),
      // home: const ResponsiveLayout(desktopBody: desktop(), mobileBody: mobile(), tabletBody: tablet()),
    );
  }
}
