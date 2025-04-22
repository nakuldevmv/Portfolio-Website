import 'package:flutter/material.dart';

class Project {
  final String image;

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
    required this.image,
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
    image: "assets/ss/spamurai.jpg",
    title: "Spamurai",
    description:
        "Spamurai is a Node.js-powered digital blade that auto-unsubscribes spam emails using IMAP, Puppeteer, and MongoDB Atlas.",
    icon: Icons.shield_rounded,
    flutterSvg:
        "assets/svg/nodejs.svg", // Replace with actual Node icon if you got one
    dartSvg: "assets/svg/mongodb.svg", // Replace with MongoDB logo
    keyFeatures:
        "• Automatically unsubscribes from emails via IMAP\n• Ensures link safety using IPQualityScore\n• Stores activity logs in MongoDB Atlas",
    githubLink: "https://github.com/nakuldevmv/Spamurai",
    demoVideoLink: "", // Swap with actual demo if diff
    screenshot1: "assets/ss/spamurai1.png",
    screenshot2: "assets/ss/spamurai2.png",
  ),

  Project(
    image: "assets/ss/findx.jpg",
    title: "FindX",
    description:
        "FindX is a Flutter tool that simplifies Google dorking to locate specific file types online.",
    icon: Icons.search_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/google.svg",
    keyFeatures:
        "• Automates Google Dorking\n• Customizable Searches\n• User-Friendly Interface",
    githubLink: "https://github.com/nakuldevmv/FindX",
    demoVideoLink: "https://findx24.vercel.app/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    image: "assets/ss/appleMusic.jpg",
    title: "Apple Music Clone",
    description:
        "A clone of the Apple Music app with a clean interface and basic functionalities like browsing music and playlists.",
    icon: Icons.library_music_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures:
        "• Music browsing\n• UI/UX similar to Apple Music\n• Dynamic content rendering",
    githubLink: "https://github.com/nakuldevmv/Apple-Music-Clone",
    demoVideoLink: "https://clone-app-music-8n3cr7.netlify.app/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    image: "assets/ss/ticTac.jpg",
    title: "Tic Tac Toe Game",
    description:
        "A classic Tic Tac Toe game with simple design and interactive gameplay.",
    icon: Icons.gamepad_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "• Two-player mode\n• Responsive design\n• Simple UI",
    githubLink: "https://github.com/nakuldevmv/Tic-Tac-Toe-Game",
    demoVideoLink: "https://tic-tac-toe-game-app-2024.netlify.app/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    image: "assets/ss/portWeb.jpg",
    title: "Portfolio Website",
    description:
        "A personal portfolio website to showcase projects, skills, and experience. Made the website fully responsive across all platforms.",
    icon: Icons.web_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures:
        "• Responsive design\n• Contact page\n• Download PDF feature\n• Bento UI Style",
    githubLink: "https://github.com/nakuldevmv/Portfolio-Website",
    demoVideoLink: "https://nakuldevmv.github.io/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    image: "assets/ss/qrcode.jpg",
    title: "QR Code Scanner",
    description:
        "An app to scan and generate QR codes with user-friendly features. Successfully integrated real-time QR scanning capabilities.",
    icon: Icons.qr_code_scanner_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures: "• Real-time QR scanning\n• QR code generation\n• Simple UI",
    githubLink: "https://github.com/nakuldevmv/QR-Code-Scanner",
    demoVideoLink: "https://qrcode-scanner-app-2024.netlify.app/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  Project(
    image: "assets/ss/weather.jpg",
    title: "Weather App",
    description:
        "A weather forecasting app providing real-time weather data based on location. Gained hands-on experience with API integration.",
    icon: Icons.wb_cloudy_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures:
        "• Location-based weather updates\n• Forecast display\n• Clean UI",
    githubLink: "https://github.com/nakuldevmv/Weather-app",
    demoVideoLink: "https://weather-app-ow-2024.netlify.app/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  // Project(
  //   image: "assets/ss/calc.jpg",
  //   title: "Calculator App",
  //   description: "A basic calculator app with standard arithmetic functions. Ensured accurate calculations and error handling.",
  //   icon: Icons.calculate_rounded,
  //   flutterSvg: "assets/svg/flutter.svg",
  //   dartSvg: "assets/svg/dart.svg",
  //   keyFeatures: "• Basic operations\n• Scientific Calculator\n• Clean and simple UI",
  //   githubLink: "https://github.com/nakuldevmv/Calculator-app",
  //   demoVideoLink: "",
  //   screenshot1: "assets/ss/first.png",
  //   screenshot2: "assets/ss/second.png",
  // ),
  Project(
    image: "assets/ss/toDo.jpg",
    title: "To-Do List App",
    description:
        "A task management app for creating, editing, and managing daily tasks. Integrated local data storage to maintain task persistence.",
    icon: Icons.checklist_rounded,
    flutterSvg: "assets/svg/flutter.svg",
    dartSvg: "assets/svg/dart.svg",
    keyFeatures:
        "• Add/delete tasks\n• Mark tasks as complete\n• Persistent data storage",
    githubLink: "https://github.com/nakuldevmv/To-Do-App",
    demoVideoLink: "https://to-do-list-app-2024.netlify.app/",
    screenshot1: "assets/ss/first.png",
    screenshot2: "assets/ss/second.png",
  ),
  // Project(
  //   image: "assets/ss/stopWatch.jpg",
  //   title: "Stopwatch App",
  //   description: "A simple stopwatch app with start, stop, and reset functionality. Focused on accurate time tracking and improved understanding of time-based operations in Flutter.",
  //   icon: Icons.timer_rounded,
  //   flutterSvg: "assets/svg/flutter.svg",
  //   dartSvg: "assets/svg/dart.svg",
  //   keyFeatures: "• Start/stop functionality\n• Reset button\n• Minimal UI",
  //   githubLink: "https://github.com/nakuldevmv/Stopwatch-app",
  //   demoVideoLink: "https://stopwatch-app-2024.netlify.app/",
  //   screenshot1: "assets/ss/first.png",
  //   screenshot2: "assets/ss/second.png",
  // ),
];
