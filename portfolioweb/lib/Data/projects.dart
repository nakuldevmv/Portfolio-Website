import 'package:flutter/material.dart';

class Project {
  final String title;
  final String description;
  final IconData icon;

  Project({required this.title, required this.description, required this.icon});
}

List<Project> projects = [
  Project(
    title: "Apple Music Clone",
    description: "An Apple Music clone app built using Flutter framework",
    icon: Icons.library_music_rounded,
  ),
  Project(
    title: "Tic Tac Toe Game App",
    description: "A Tic Tac Toe game app made with Flutter",
    icon: Icons.gamepad_rounded,
  ),
  Project(
    title: "Portfolio Website",
    description: "A personal portfolio website built with Flutter Web",
    icon: Icons.web_rounded,
  ),
  Project(
    title: "QR Code Scanner App",
    description: "A QR code scanner app developed using Flutter",
    icon: Icons.qr_code_scanner_rounded,
  ),
  Project(
    title: "Weather App",
    description: "A weather forecast app built with Flutter framework",
    icon: Icons.wb_cloudy_rounded,
  ),
  Project(
    title: "Calculator App",
    description: "A simple calculator app made with Flutter",
    icon: Icons.calculate_rounded,
  ),
  Project(
    title: "To-Do List App",
    description: "A to-do list app made using Flutter",
    icon: Icons.checklist_rounded,
  ),
  Project(
    title: "Stopwatch App",
    description: "A basic stopwatch app developed using Flutter",
    icon: Icons.timer_rounded,
  ),
];
