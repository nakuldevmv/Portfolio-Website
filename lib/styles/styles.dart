// ignore_for_file: camel_case_types, ant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

int rad = 19;
int Srad = 10;

Color GlobalColor = const Color.fromARGB(127, 37, 37, 37);
Color SecondaryColor = const Color.fromARGB(255, 37, 37, 37);

Color ResumeColor = const Color.fromARGB(127, 183, 183, 183);
Color IconHClr = const Color.fromARGB(134, 0, 255, 213);
Color FontColor = const Color.fromARGB(255, 246, 246, 246);
Color FontBg = const Color.fromARGB(255, 136, 136, 136);

BorderRadius GlobalBorderRadius =
    BorderRadius.all(Radius.circular(rad as double));
BorderRadius projectTopLBottomL = BorderRadius.only(
    topLeft: Radius.circular(rad as double),
    bottomLeft: Radius.circular(rad as double));
BorderRadius projectTopRBottomR = BorderRadius.only(
    topRight: Radius.circular(rad as double),
    bottomRight: Radius.circular(rad as double));
BorderRadius RadUp = BorderRadius.only(
    topLeft: Radius.circular(rad as double),
    topRight: Radius.circular(rad as double));
BorderRadius RadBottom = BorderRadius.only(
    bottomLeft: Radius.circular(rad as double),
    bottomRight: Radius.circular(rad as double));
BorderRadius SecondaryBorderRadius =
    BorderRadius.all(Radius.circular(Srad as double));
BoxShadow GlobalShadow = BoxShadow(
  color: const Color.fromARGB(255, 0, 0, 0)
      .withOpacity(0.5), // Shadow color with some transparency
  spreadRadius: 1, // How far the shadow spreads
  blurRadius: 5, // Smoothness of the shadow
  offset: const Offset(2, 2), // Horizontal and vertical offset
);

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
              style: GoogleFonts.chakraPetch(
                  textStyle: textStyles.HeadingB, fontSize: kDefaultFontSize),
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
  // static  BorderRadius borderRadius = BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20));
  static BorderRadius borderRadius = GlobalBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(10);
  // static  Color color = ResumeColor;
  static double width = 1;
  static double height = 60;
}

class mobile_containerStyle {
  static EdgeInsets margin =
      const EdgeInsets.only(top: 16, left: 16, right: 16);
  static BorderRadius borderRadius = GlobalBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(16);
  static Color color = GlobalColor;
  static double width = 1;
  static double height = 0.25;
  static double iconSize = 0.045;
  static double widthButton = 0.46 / 3;
}

class mobile_ProjectContainer {
  static EdgeInsets margin = const EdgeInsets.only(left: 10, right: 10);
  static BorderRadius borderRadius = GlobalBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(10);
  static Color color = GlobalColor;
  static double width = 130;
  static double widthButton = 0.46 / 4;

  static double height = 130;
  static double iconSize = 0.045;
}

class mobile_SVGContainer {
  static double size = 0.09;
  // static  Color color = Color.fromARGB(0, 18, 18, 18);
  static double width = size;
  static double height = size;
}

class tablet_containerStyle {
  // static  EdgeInsets margin = EdgeInsets.symmetric(vertical: 16, horizontal: 16);

  static EdgeInsets margin = const EdgeInsets.only(top: 16, left: 16);
  static EdgeInsets marginCol2 =
      const EdgeInsets.only(top: 16, left: 16, right: 16);

  static BorderRadius borderRadius = GlobalBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(16);
  static Color color = GlobalColor;
  static double width = 0.46;
  static double widthButton = 0.46 / 4;
  static double height = 0.25;
  static double iconSizeS = 20;
  static double iconSizeL = 25;
  static double row1 = 255 + 18.5;
  static double row2 = 255 + 12;
  static double row3 = 222;
}

class tablet_SVGContainer {
  static double size = 0.09 / 2;
  // static  Color color = GlobalColor;
  static double width = size;
  static double height = size;
}

class containerStyle {
  static Color colorR = ResumeColor;

  static EdgeInsets margin = const EdgeInsets.all(10);
  static BorderRadius borderRadius = GlobalBorderRadius;
  static BorderRadius borderRadiusBottom = RadBottom;
  static BorderRadius borderRadiusRadup = RadUp;
  static EdgeInsets padding = const EdgeInsets.all(16);
  static EdgeInsets paddingNew =
      const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 0.5);
  static EdgeInsets paddingNewHeading = const EdgeInsets.only(
    top: 16,
    left: 16,
    right: 16,
  );

  static Color color = GlobalColor;
  static double width = 0.19535;
  static double widthAboutme = 0.25;

  // static  double width = 0.2;
  //mobile property
  static EdgeInsets margin_mobile =
      const EdgeInsets.only(top: 10, left: 10, right: 5);
  static EdgeInsets padding_mobile = const EdgeInsets.all(12);
  static double width_mobile = 0.455;
  static double height_mobile = 0.25;
  static double height_mobile_about = 0.235;
  static double height_mobile_exp = 0.182;

  static double height_mobile_img = 0.32;
  static double height_mobile_skill = 0.25;
  static double height_mobile_project = 0.4;
  static double iconSize = 0.045;
  static double height = 200;
}

class ContactMe_containerStyle_mobile {
  static EdgeInsets margin = const EdgeInsets.only(
    top: 10,
  );
  static BorderRadius borderRadius = GlobalBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(16);
  static Color color = GlobalColor;
  // static  Color main_color = Color.fromARGB(120, 37, 37, 37);

  //
  static double width_mail_Linkedin = 0.59;
  static double main_width = 0.8;
  static double main_height = 0.5;

  static double loc_width = 1;
  static double loc_height = 0.285;
  static double bottom_icon_width = 0.28;
  static double githubsizeW = 0.3;
  // static  double githubsizeH = 0.182;

  //
}

class ContactMe_containerStyle_tablet {
  static EdgeInsets margin = const EdgeInsets.only(
    top: 10,
  );
  static BorderRadius borderRadius = GlobalBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(16);
  static Color color = GlobalColor;
  // static  Color main_color = Color.fromARGB(120, 37, 37, 37);

  //
  static double width_mail_Linkedin = 360;
  // static  double main_width = 0.8;
  // static  double main_height = 0.5;

  static double loc_width = 570;
  static double loc_height = 180;
  static double bottom_icon_width = 175.2;
  // static  double bottom_icon_height = 70;

  static double githubsizeW = 198;
  static double svgcontHeight = 24;

  //
}

class ContactMe_containerStyle {
  static EdgeInsets margin = const EdgeInsets.all(10);
  static BorderRadius borderRadius = GlobalBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(16);
  static Color color = GlobalColor;
  // static  Color main_color = Color.fromARGB(120, 37, 37, 37);

  //
  static double width_mail_Linkedin = 0.215;
  static double main_width = 0.63;
  static double main_height = 0.5;

  static double loc_width = 0.25;
  static double loc_height = 0.285;
  static double bottom_icon_width = 0.1;
  static double githubsizeW = 0.1;
  static double githubsizeH = 0.182;

  //
}

class ProjectcontainerStyle {
  static EdgeInsets margin = const EdgeInsets.only(bottom: 10);
  static BorderRadius borderRadius = SecondaryBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(16);
  static Color color = SecondaryColor;
  static double width = 0.19535;
  static double height = 200;
}

class MyProject_containerStyle {
  static EdgeInsets margin = const EdgeInsets.all(10);
  static BorderRadius borderRadius = GlobalBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(16);
  static Color color = SecondaryColor;
  static double width = 0.19535;
  static double buttonWidth = 0.07;
  static double height = 0.3 + 0.1;

  static double Long_height = 0.4 + 0.1;
}

class EducationcontainerStyle {
  static EdgeInsets margin =
      const EdgeInsets.only(bottom: 10, left: 10, right: 10);
  static BorderRadius borderRadius = SecondaryBorderRadius;
  static EdgeInsets padding = const EdgeInsets.all(10);
  static Color color = SecondaryColor;

  static EdgeInsets margin_mobile = const EdgeInsets.only(bottom: 10, left: 10);
  // static  BorderRadius borderRadius =SecondaryBorderRadius;
  static EdgeInsets padding_mobile = const EdgeInsets.all(10);
  static double height_card_edu = 0.125;
  static double height_card_exp = 0.09;

  // static  Color color = SecondaryColor;
}

class textStyles {
  static TextStyle B = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: FontColor,
  );
  static TextStyle I = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.normal,
    color: FontColor,
    //fontStyle: FontStyle.italic,
    //backgroundColor: FontBg,
  );

  static TextStyle HeadingB = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: FontColor,
  );
  static TextStyle HeadingI = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.normal,
    color: FontColor,
    //fontStyle: FontStyle.italic,
    //backgroundColor: FontBg,
  );

  static TextStyle Name1 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
    color: FontColor,
    fontStyle: FontStyle.normal,
    // //backgroundColor: FontBg,
  );

  static TextStyle Name2 = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.normal,
    color: FontColor,
    //fontStyle: FontStyle.italic,
    // //backgroundColor: FontBg,
  );

  static TextStyle P1_mobile = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.normal,
    // //backgroundColor: FontBg,
  );
  static TextStyle P1 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.normal,
    // //backgroundColor: FontBg,
  );
  static TextStyle P2B = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: FontColor,
    // //backgroundColor: FontBg,
  );
  static TextStyle P2I = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: FontColor,
    //fontStyle: FontStyle.italic,
    //backgroundColor: FontBg,
    // //backgroundColor: FontBg,
  );

  static TextStyle edu_H_B = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: FontColor,
    fontStyle: FontStyle.normal,
  );
  static TextStyle edu_P_L = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    // color: Color.fromARGB(135, 255, 255, 255),
    fontStyle: FontStyle.normal,
  );
  static TextStyle edu_P_N = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.normal,
  );

  static TextStyle projectTitle = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: FontColor,
    fontStyle: FontStyle.normal,
    // //backgroundColor: FontBg,
  );

  static TextStyle descriptions = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: FontColor,
    fontStyle: FontStyle.normal,
  );
  static TextStyle Dheadings = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: FontColor,
    fontStyle: FontStyle.normal,
  );
}
