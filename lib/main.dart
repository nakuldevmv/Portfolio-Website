import 'package:nakul_dev/functions/Alert_Box.dart';
import 'package:nakul_dev/nakuldev_portfolio/ToResponsivePage/toResponsiveLayout_Main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
      // home: const HomePage(),
      home: const toResponsiveLayout(), //Website Enabled
      // home: const NotResp(), // Website Disabled
    );
  }
}
