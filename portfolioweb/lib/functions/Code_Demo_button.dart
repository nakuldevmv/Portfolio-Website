import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/functions/launch_url.dart';
import 'package:portfolioweb/functions/notifySnackBar.dart';
import 'package:portfolioweb/styles/styles.dart';

void codeButton(BuildContext context, index) {
  index.githubLink != '' ? urlLaunch(index.githubLink) : notifySnackBar(context, "Sorry, the GitHub code for this project is not available.");
}

void demoButton(BuildContext context, index) {
  index.demoVideoLink != '' ? urlLaunch(index.demoVideoLink) : notifySnackBar(context, "Sorry, the demo for this project is not available. Please check back later!");
}
