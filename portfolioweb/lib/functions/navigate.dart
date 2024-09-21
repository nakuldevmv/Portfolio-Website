import 'package:flutter/material.dart';

navigateTo(context, destination) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => destination()));
}
