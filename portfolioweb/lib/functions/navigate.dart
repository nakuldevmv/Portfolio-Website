import 'package:flutter/material.dart';

void navigateTo(BuildContext context, Widget destination) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => destination));
}
