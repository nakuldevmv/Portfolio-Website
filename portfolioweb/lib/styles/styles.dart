import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class containerStyle {
  static const EdgeInsets margin = EdgeInsets.all(10);
  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(10);
  static const Color color = Color.fromARGB(255, 72, 72, 72);
  static const double width = 0.19535;
  static const double height = 200;
}

class textStyles {
  static const TextStyle B = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle I = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.normal,
      color: Colors.white,
      fontStyle: FontStyle.italic);
}
