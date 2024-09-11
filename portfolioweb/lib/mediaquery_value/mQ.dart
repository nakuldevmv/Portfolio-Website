import 'package:flutter/material.dart';

double widthValue(BuildContext context, double pixelValue) {
  double deviceWidth = MediaQuery.of(context).size.width;
  double percentage = pixelValue / deviceWidth;
  print(deviceWidth * percentage);

  return deviceWidth * percentage;
}

double heightValue(BuildContext context, double pixelValue) {
  double deviceHeight = MediaQuery.of(context).size.height;
  double percentage = pixelValue / deviceHeight;
  print(deviceHeight * percentage);

  return deviceHeight * percentage;
}
