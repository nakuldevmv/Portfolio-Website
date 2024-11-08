import 'package:nakul_dev/functions/launch_url.dart';
import 'package:nakul_dev/functions/notifySnackBar.dart';
import 'package:flutter/material.dart';

void codeButton(BuildContext context, index) {
  index.githubLink != ''
      ? urlLaunch(index.githubLink)
      : notifySnackBar(
          context, "Sorry, the GitHub code for this project is not available.");
}

void demoButton(BuildContext context, index) {
  index.demoVideoLink != ''
      ? urlLaunch(index.demoVideoLink)
      : notifySnackBar(context,
          "Sorry, the demo for this project is not available. Please check back later!");
}
