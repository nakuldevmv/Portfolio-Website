import 'package:Nakul_Dev/Data/profilePic_book.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsiveLayout_Main.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsive_AboutMe.dart';
import 'package:Nakul_Dev/functions/Mouse_Tracker.dart';
import 'package:Nakul_Dev/functions/animated_Grid_Dot.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await preloadAssets();
  runApp(const MyApp());
}

Future<void> preloadAssets() async {
  await preloadImages();
  await preloadSvgs();
}

Future<void> preloadImages() async {
  await rootBundle.load('assets/background_image.jpg');
  await rootBundle.load(profilepic);
}

Future<void> preloadSvgs() async {
  await rootBundle.loadString('assets/svg/blender.svg');
  await rootBundle.loadString('assets/svg/cpp.svg');
  await rootBundle.loadString('assets/svg/css.svg');
  await rootBundle.loadString('assets/svg/dart.svg');
  await rootBundle.loadString('assets/svg/figma.svg');
  await rootBundle.loadString('assets/svg/flutter.svg');
  await rootBundle.loadString('assets/svg/html.svg');
  await rootBundle.loadString('assets/svg/java.svg');
  await rootBundle.loadString('assets/svg/javascript.svg');
  await rootBundle.loadString('assets/svg/mysql.svg');
  await rootBundle.loadString('assets/svg/python.svg');
  await rootBundle.loadString('assets/svg/framer.svg');
  await rootBundle.loadString('assets/svg/x.svg');
  await rootBundle.loadString('assets/svg/linkedin.svg');
  await rootBundle.loadString('assets/svg/instagram.svg');
  await rootBundle.loadString('assets/svg/hackerrank.svg');
  await rootBundle.loadString('assets/svg/github.svg');
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nakul Dev",
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      debugShowCheckedModeBanner: false,
      home: const toResponsiveLayout(), //Website Enabled
      // body:const notResp(), // Website Disabled
    );
  }
}
