import 'package:flutter/material.dart';

double widthValue(double pixelValue, BuildContext context) {
  double deviceWidth = MediaQuery.of(context).size.width;
  return pixelValue / deviceWidth;
}

double pixelToPercentage(
    double pixelValue, BuildContext context, bool isWidth) {
  double deviceSize = isWidth
      ? MediaQuery.of(context).size.width
      : MediaQuery.of(context).size.height;
  double percentage = pixelValue / deviceSize;
  return percentage * 100;
}

double heightValue(BuildContext context, double pixelValue) {
  double deviceHeight = MediaQuery.of(context).size.height;
  double percentage = pixelValue / deviceHeight;
  print(deviceHeight * percentage);

  return deviceHeight * percentage;
}
