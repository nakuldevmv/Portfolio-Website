import 'package:Nakul_Dev/Data/projects.dart';
import 'package:Nakul_Dev/functions/Code_Demo_button.dart';
import 'package:Nakul_Dev/styles/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class demo_code_button extends StatelessWidget {
  final dynamic index;
  const demo_code_button({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //code btn
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(right: 10),
            height: 30,
            width: 90,
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(
                // topLeft: Radius.circular(10),
                // topRight: Radius.circular(10),
                Radius.circular(10)), color: EducationcontainerStyle.color),
            child: GestureDetector(
              onTap: () {
                codeButton(context, projects[index]);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AutoSizeText(
                    "Code",
                    style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                    minFontSize: 5,
                    maxFontSize: 15,
                    maxLines: 1,
                  ),
                  Icon(
                    color: textStyles.B.color,
                    Icons.code_rounded,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
          //demo btn
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(right: 10),
            height: 30,
            width: 90,
            decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: EducationcontainerStyle.color),
            child: GestureDetector(
              onTap: () {
                demoButton(context, projects[index]);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AutoSizeText(
                    "Demo",
                    style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                    minFontSize: 5,
                    maxFontSize: 15,
                    maxLines: 1,
                  ),
                  Icon(
                    color: textStyles.B.color,
                    Icons.add_to_home_screen_rounded,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
