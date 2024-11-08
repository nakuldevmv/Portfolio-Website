import 'package:nakul_dev/styles/styles.dart';
import 'package:flutter/material.dart';

void themeSwitcher(void Function(void Function()) setState, bool isDark) {
  setState(() {
    // Toggle the theme
    isDark = !isDark; // Change isDark status

    if (isDark) {
      GlobalColor = const Color.fromARGB(255, 183, 183, 183);
      SecondaryColor = const Color.fromARGB(255, 138, 138, 138);
      ResumeColor = const Color.fromARGB(127, 37, 37, 37);
      FontColor = const Color.fromARGB(179, 0, 0, 0);
      FontBg = const Color.fromARGB(255, 179, 179, 179);
    } else {
      GlobalColor = const Color.fromARGB(127, 37, 37, 37);
      SecondaryColor = const Color.fromARGB(255, 37, 37, 37);
      ResumeColor = const Color.fromARGB(255, 183, 183, 183);
      FontColor = Colors.white70;
      FontBg = const Color.fromARGB(255, 136, 136, 136);
    }
  });
}
