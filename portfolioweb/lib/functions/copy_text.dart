import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/styles/styles.dart';

void copyTextToClipboard(BuildContext context, String text) {
  Clipboard.setData(ClipboardData(text: text));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        backgroundColor: const Color.fromARGB(153, 37, 37, 37),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        content: AutoSizeText(
          'Text copied to clipboard',
          minFontSize: 10,
          maxFontSize: 15,
          maxLines: 1,
          style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B),
        )),
  );
}
