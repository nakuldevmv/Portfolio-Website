import 'package:flutter/material.dart';

class Project {
  final String title;
  final String description;
  final IconData icon;
  final String flutterSvg;
  final String dartSvg;
  final String keyFeatures;
  final String githubLink;
  final String demoVideoLink;
  final String screenshot1;
  final String screenshot2;

  Project({
    required this.title,
    required this.description,
    required this.icon,
    required this.flutterSvg,
    required this.dartSvg,
    required this.keyFeatures,
    required this.githubLink,
    required this.demoVideoLink,
    required this.screenshot1,
    required this.screenshot2,
  });
}

List<Project> projects = [
  Project(
    title: "Apple Music Clone",
    description: "A clone of the Apple Music app with a clean interface and basic functionalities like browsing music and playlists.",
    icon: Icons.library_music_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "- Music browsing\n- UI/UX similar to Apple Music\n- dynamic content rendering",
    githubLink: "https://github.com/nakuldevmv/Apple-Music-Clone",
    demoVideoLink: "https://www.linkedin.com/pulse/apple-music-clone-using-flutter-nakul-dev-m-v-sihtc/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    title: "Tic Tac Toe Game",
    description: "A classic Tic Tac Toe game with simple design and interactive gameplay.",
    icon: Icons.gamepad_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "- two-player mode\n- responsive design\n- Simple UI",
    githubLink: "https://github.com/nakuldevmv/Tic-Tac-Toe-Game",
    demoVideoLink: "https://www.linkedin.com/posts/nakuldevmv_flutter-internship-prodigyinfotech-activity-7235545601256341504-05oY?utm_source=share&utm_medium=member_desktop",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    title: "Portfolio Website",
    description: "A personal portfolio website to showcase projects, skills, and experience. Made the website fully responsive across all platforms.",
    icon: Icons.web_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "- Responsive design\n- contact page\n- download PDF feature\n- Box UI Style",
    githubLink: "https://github.com/nakuldevmv/nakuldevmv.github.io",
    demoVideoLink: "https://nakuldevmv.github.io/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    title: "QR Code Scanner App",
    description: "An app to scan and generate QR codes with user-friendly features. Successfully integrated real-time QR scanning capabilities.",
    icon: Icons.qr_code_scanner_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "- Real-time QR scanning\n- QR code generation\n- simple UI",
    githubLink: "https://github.com/nakuldevmv/QR-Code-Scanner",
    demoVideoLink: "https://www.linkedin.com/posts/nakuldevmv_flutter-internship-prodigyinfotech-activity-7236652632092667906-6MTm?utm_source=share&utm_medium=member_desktop",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    title: "Weather App",
    description: "A weather forecasting app providing real-time weather data based on location. Gained hands-on experience with API integration.",
    icon: Icons.wb_cloudy_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "- Location-based weather updates\n- forecast display\n- clean UI",
    githubLink: "https://github.com/nakuldevmv/Weather-app",
    demoVideoLink: "",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    title: "Calculator App",
    description: "A basic calculator app with standard arithmetic functions. Ensured accurate calculations and error handling.",
    icon: Icons.calculate_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "- Basic operations\n- Scientific Calculator\n- clean and simple UI",
    githubLink: "https://github.com/nakuldevmv/Calculator-app",
    demoVideoLink: "https://www.linkedin.com/posts/nakuldevmv_flutter-internship-prodigyinfotech-activity-7232001094082568192-2V-j?utm_source=share&utm_medium=member_desktop",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    title: "To-Do List App",
    description: "A task management app for creating, editing, and managing daily tasks. Integrated local data storage to maintain task persistence.",
    icon: Icons.checklist_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "- Add/delete tasks\n- mark tasks as complete\n- persistent data storage",
    githubLink: "https://github.com/nakuldevmv/To-Do-App",
    demoVideoLink: "https://www.linkedin.com/posts/nakuldevmv_flutter-internship-prodigyinfotech-activity-7233830713656025090-VXMY?utm_source=share&utm_medium=member_desktop",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    title: "Stopwatch App",
    description: "A simple stopwatch app with start, stop, and reset functionality. Focused on accurate time tracking and improved understanding of time-based operations in Flutter.",
    icon: Icons.timer_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "- start/stop functionality\n- reset button\n- minimal UI",
    githubLink: "https://github.com/nakuldevmv/Stopwatch-app",
    demoVideoLink: "https://www.linkedin.com/posts/nakuldevmv_flutter-internship-prodigyinfotech-activity-7234547300813971458-cphX?utm_source=share&utm_medium=member_desktop",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
];
