import 'package:Nakul_Dev/styles/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void notifySnackBar(BuildContext context, String) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        backgroundColor: const Color.fromARGB(210, 37, 37, 37),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        content: AutoSizeText(
          String,
          minFontSize: 10,
          maxFontSize: 15,
          maxLines: 1,
          style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B),
        )),
  );
}
