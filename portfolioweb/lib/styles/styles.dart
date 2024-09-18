// ignore_for_file: camel_case_types, constant_identifier_names

import 'package:flutter/material.dart';

class containerStyle {
  static const EdgeInsets margin = EdgeInsets.all(10);
  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = Color.fromARGB(255, 37, 37, 37);
  static const double width = 0.19535;
  // static const double width = 0.2;

  static const double height = 200;
}

class ProjectcontainerStyle {
  static const EdgeInsets margin = EdgeInsets.only(bottom: 10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = Color.fromARGB(255, 26, 26, 26);
  static const double width = 0.19535;
  static const double height = 200;
}

class EducationcontainerStyle {
  static const EdgeInsets margin = EdgeInsets.only(bottom: 10, left: 10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8));
  static const EdgeInsets padding = EdgeInsets.all(10);
  static const Color color = Color.fromARGB(255, 26, 26, 26);
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
    fontStyle: FontStyle.italic,
    backgroundColor: Color.fromARGB(255, 136, 136, 136),
  );

  static const TextStyle HeadingB = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const TextStyle HeadingI = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontStyle: FontStyle.italic,
    backgroundColor: Color.fromARGB(255, 136, 136, 136),
  );

  static const TextStyle Name1 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
    fontStyle: FontStyle.normal,
    // backgroundColor: Color.fromARGB(255, 136, 136, 136),
  );

  static const TextStyle Name2 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 255, 255, 255),
    fontStyle: FontStyle.italic,
    // backgroundColor: Color.fromARGB(255, 136, 136, 136),
  );
  static const TextStyle P1 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 255, 255, 255),
    fontStyle: FontStyle.normal,
    // backgroundColor: Color.fromARGB(255, 136, 136, 136),
  );
  static const TextStyle P2B = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    // backgroundColor: Color.fromARGB(255, 136, 136, 136),
  );
  static const TextStyle P2I = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontStyle: FontStyle.italic,
    backgroundColor: Color.fromARGB(255, 136, 136, 136),
    // backgroundColor: Color.fromARGB(255, 136, 136, 136),
  );

  static const TextStyle edu_H_B = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle edu_P_L = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(135, 255, 255, 255),
    fontStyle: FontStyle.normal,
  );
  static const TextStyle edu_P_N = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.white,
    fontStyle: FontStyle.normal,
  );
}
