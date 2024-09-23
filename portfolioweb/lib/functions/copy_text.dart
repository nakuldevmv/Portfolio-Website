import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/functions/notifySnackBar.dart';
import 'package:portfolioweb/styles/styles.dart';

void copyTextToClipboard(BuildContext context, String text) {
  Clipboard.setData(ClipboardData(text: text));
  notifySnackBar(context, "Text copied to clipboard");
}
