// ignore_for_file: camel_case_types, constant_identifier_names

import 'package:flutter/material.dart';

class mobile_containerStyle {
  static const EdgeInsets margin = EdgeInsets.only(top: 16, left: 16, right: 16);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = Color.fromARGB(255, 37, 37, 37);
  static const double width = 1;
  static const double height = 0.25;
  static const double iconSize = 0.045;
}

class mobile_ProjectContainer {
  static const EdgeInsets margin = EdgeInsets.only(left: 10, right: 10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(10);
  static const Color color = Color.fromARGB(255, 18, 18, 18);
  static const double width = 0.3;
  static const double height = 0.169;
  static const double iconSize = 0.045;
}

class mobile_SVGContainer {
  static const double size = 0.09;
  static const Color color = Color.fromARGB(0, 18, 18, 18);
  static const double width = size;
  static const double height = size;
}

class containerStyle {
  static const EdgeInsets margin = EdgeInsets.all(10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = Color.fromARGB(255, 37, 37, 37);
  static const double width = 0.19535;
  // static const double width = 0.2;
  //mobile property
  static const EdgeInsets margin_mobile = EdgeInsets.only(top: 10, left: 10, right: 5);
  static const EdgeInsets padding_mobile = EdgeInsets.all(12);
  static const double width_mobile = 0.455;
  static const double height_mobile = 0.25;
  static const double height_mobile_about = 0.235;
  static const double height_mobile_exp = 0.182;

  static const double height_mobile_img = 0.32;
  static const double height_mobile_skill = 0.25;
  static const double height_mobile_project = 0.4;
  static const double iconSize = 0.045;
  static const double height = 200;
}

class ContactMe_containerStyle {
  static const EdgeInsets margin = EdgeInsets.all(10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(15));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = Color.fromARGB(255, 37, 37, 37);
  static const Color main_color = Color.fromARGB(120, 37, 37, 37);

  //
  static const double width_mail_Linkedin = 0.215;
  static const double main_width = 0.63;
  static const double main_height = 0.5;

  static const double loc_width = 0.25;
  static const double loc_height = 0.285;
  static const double bottom_icon_width = 0.1;
  static const double githubsizeW = 0.1;
  static const double githubsizeH = 0.182;

  //
}

class ProjectcontainerStyle {
  static const EdgeInsets margin = EdgeInsets.only(bottom: 10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = Color.fromARGB(255, 26, 26, 26);
  static const double width = 0.19535;
  static const double height = 200;
}

class MyProject_containerStyle {
  static const EdgeInsets margin = EdgeInsets.all(10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = Color.fromARGB(255, 26, 26, 26);
  static const double width = 0.19535;
  static const double buttonWidth = 0.07;
  static const double height = 0.3 + 0.1;

  static const double Long_height = 0.4 + 0.1;
}

class EducationcontainerStyle {
  static const EdgeInsets margin = EdgeInsets.only(bottom: 10, left: 10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8));
  static const EdgeInsets padding = EdgeInsets.all(10);
  static const Color color = Color.fromARGB(255, 26, 26, 26);

  static const EdgeInsets margin_mobile = EdgeInsets.only(bottom: 10, left: 10);
  // static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8));
  static const EdgeInsets padding_mobile = EdgeInsets.all(10);
  static const double height_card_edu = 0.125;
  static const double height_card_exp = 0.09;

  // static const Color color = Color.fromARGB(255, 26, 26, 26);
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

  static const TextStyle P1_mobile = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 255, 255, 255),
    fontStyle: FontStyle.normal,
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

  static const TextStyle projectTitle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontStyle: FontStyle.normal,
    // backgroundColor: Color.fromARGB(255, 136, 136, 136),
  );

  static const TextStyle descriptions = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Color.fromARGB(255, 255, 255, 255),
    fontStyle: FontStyle.normal,
  );
  static const TextStyle Dheadings = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
    fontStyle: FontStyle.normal,
  );
}
