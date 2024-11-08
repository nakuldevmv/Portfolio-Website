import 'package:nakul_dev/functions/notifySnackBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void copyTextToClipboard(BuildContext context, String text) {
  Clipboard.setData(ClipboardData(text: text));
  notifySnackBar(context, "Text copied to clipboard");
}
