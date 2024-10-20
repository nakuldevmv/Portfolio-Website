// ignore_for_file: camel_case_types, constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color GlobalColor = Color.fromARGB(127, 37, 37, 37);
const Color SecondaryColor = Color.fromARGB(255, 37, 37, 37);
const Color ResumeColor = Color.fromARGB(255, 183, 183, 183);
const Color FontColor = Colors.white70;
const Color FontBg = Color.fromARGB(255, 136, 136, 136);

class rotating_container extends StatelessWidget {
  final Color color;
  final String emoji;
  final dynamic rotationZ;
  final String text;
  final double width;

  const rotating_container({
    super.key,
    required this.color,
    required this.rotationZ,
    required this.emoji,
    required this.text,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..rotateZ(
          rotationZ * 3.1415927 / 180,
        ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15), // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 5, // Blur radius
              offset: const Offset(0, 3), // Offset in the x and y direction
            ),
          ],
        ),
        width: width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$text ',
              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB, fontSize: kDefaultFontSize),
            ),
            Image.asset(
              emoji,
              width: 24.5,
            ),
          ],
        ),
      ),
    );
  }
}

class navigation_containerStyle {
  // static const BorderRadius borderRadius = BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20));
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10.0));
  static const EdgeInsets padding = EdgeInsets.all(10);
  // static const Color color = ResumeColor;
  static const double width = 1;
  static const double height = 60;
}

class mobile_containerStyle {
  static const EdgeInsets margin = EdgeInsets.only(top: 16, left: 16, right: 16);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = GlobalColor;
  static const double width = 1;
  static const double height = 0.25;
  static const double iconSize = 0.045;
  static const double widthButton = 0.46 / 3;
}

class mobile_ProjectContainer {
  static const EdgeInsets margin = EdgeInsets.only(left: 10, right: 10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(10);
  static const Color color = GlobalColor;
  static const double width = 130;
  static const double widthButton = 0.46 / 4;

  static const double height = 130;
  static const double iconSize = 0.045;
}

class mobile_SVGContainer {
  static const double size = 0.09;
  // static const Color color = Color.fromARGB(0, 18, 18, 18);
  static const double width = size;
  static const double height = size;
}

class tablet_containerStyle {
  // static const EdgeInsets margin = EdgeInsets.symmetric(vertical: 16, horizontal: 16);

  static const EdgeInsets margin = EdgeInsets.only(top: 16, left: 16);
  static const EdgeInsets marginCol2 = EdgeInsets.only(top: 16, left: 16, right: 16);

  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = GlobalColor;
  static const double width = 0.46;
  static const double widthButton = 0.46 / 4;
  static const double height = 0.25;
  static const double iconSizeS = 20;
  static const double iconSizeL = 25;
  static const double row1 = 255 + 18.5;
  static const double row2 = 255 + 12;
  static const double row3 = 222;
}

class tablet_SVGContainer {
  static const double size = 0.09 / 2;
  // static const Color color = GlobalColor;
  static const double width = size;
  static const double height = size;
}

class containerStyle {
  static const Color colorR = ResumeColor;

  static const EdgeInsets margin = EdgeInsets.all(10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(20));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const EdgeInsets paddingNew = EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0.5);
  static const EdgeInsets paddingNewHeading = EdgeInsets.only(
    top: 16,
    left: 16,
    right: 16,
  );

  static const Color color = GlobalColor;
  static const double width = 0.19535;
  static const double widthAboutme = 0.25;

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

class ContactMe_containerStyle_mobile {
  static const EdgeInsets margin = EdgeInsets.only(
    top: 10,
  );
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = GlobalColor;
  // static const Color main_color = Color.fromARGB(120, 37, 37, 37);

  //
  static const double width_mail_Linkedin = 0.59;
  static const double main_width = 0.8;
  static const double main_height = 0.5;

  static const double loc_width = 1;
  static const double loc_height = 0.285;
  static const double bottom_icon_width = 0.28;
  static const double githubsizeW = 0.3;
  // static const double githubsizeH = 0.182;

  //
}

class ContactMe_containerStyle_tablet {
  static const EdgeInsets margin = EdgeInsets.only(
    top: 10,
  );
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = GlobalColor;
  // static const Color main_color = Color.fromARGB(120, 37, 37, 37);

  //
  static const double width_mail_Linkedin = 360;
  // static const double main_width = 0.8;
  // static const double main_height = 0.5;

  static const double loc_width = 570;
  static const double loc_height = 180;
  static const double bottom_icon_width = 175.2;
  // static const double bottom_icon_height = 70;

  static const double githubsizeW = 198;
  // static const double githubsizeH = 0.182;

  //
}

class ContactMe_containerStyle {
  static const EdgeInsets margin = EdgeInsets.all(10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(15));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = GlobalColor;
  // static const Color main_color = Color.fromARGB(120, 37, 37, 37);

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
  static const Color color = SecondaryColor;
  static const double width = 0.19535;
  static const double height = 200;
}

class MyProject_containerStyle {
  static const EdgeInsets margin = EdgeInsets.all(10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(10));
  static const EdgeInsets padding = EdgeInsets.all(16);
  static const Color color = SecondaryColor;
  static const double width = 0.19535;
  static const double buttonWidth = 0.07;
  static const double height = 0.3 + 0.1;

  static const double Long_height = 0.4 + 0.1;
}

class EducationcontainerStyle {
  static const EdgeInsets margin = EdgeInsets.only(bottom: 10, left: 10, right: 10);
  static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8));
  static const EdgeInsets padding = EdgeInsets.all(10);
  static const Color color = SecondaryColor;

  static const EdgeInsets margin_mobile = EdgeInsets.only(bottom: 10, left: 10);
  // static const BorderRadius borderRadius = BorderRadius.all(Radius.circular(8));
  static const EdgeInsets padding_mobile = EdgeInsets.all(10);
  static const double height_card_edu = 0.125;
  static const double height_card_exp = 0.09;

  // static const Color color = SecondaryColor;
}

class textStyles {
  static const TextStyle B = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: FontColor,
  );
  static const TextStyle I = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.italic,
    backgroundColor: FontBg,
  );

  static const TextStyle HeadingB = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: FontColor,
  );
  static const TextStyle HeadingI = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.italic,
    backgroundColor: FontBg,
  );

  static const TextStyle Name1 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: FontColor,
    fontStyle: FontStyle.normal,
    // backgroundColor: FontBg,
  );

  static const TextStyle Name2 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.italic,
    // backgroundColor: FontBg,
  );

  static const TextStyle P1_mobile = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.normal,
    // backgroundColor: FontBg,
  );
  static const TextStyle P1 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.normal,
    // backgroundColor: FontBg,
  );
  static const TextStyle P2B = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: FontColor,
    // backgroundColor: FontBg,
  );
  static const TextStyle P2I = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.italic,
    backgroundColor: FontBg,
    // backgroundColor: FontBg,
  );

  static const TextStyle edu_H_B = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: FontColor,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle edu_P_L = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    // color: Color.fromARGB(135, 255, 255, 255),
    fontStyle: FontStyle.normal,
  );
  static const TextStyle edu_P_N = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle projectTitle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: FontColor,
    fontStyle: FontStyle.normal,
    // backgroundColor: FontBg,
  );

  static const TextStyle descriptions = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.normal,
  );
  static const TextStyle Dheadings = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: FontColor,
    fontStyle: FontStyle.normal,
  );
}
