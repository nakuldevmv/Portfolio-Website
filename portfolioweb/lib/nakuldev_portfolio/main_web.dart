import 'package:flutter/material.dart';
import 'package:portfolioweb/mediaquery_value/mQ.dart';

import '../styles/styles.dart';

class nakuldev extends StatefulWidget {
  const nakuldev({super.key});

  @override
  State<nakuldev> createState() => _nakuldevState();
}

class _nakuldevState extends State<nakuldev> {
  double pixelValue = 300;

  @override
  Widget build(BuildContext context) {
    double percentage = pixelToPercentage(pixelValue, context, true);
    double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Nakul </Dev>"),
      //   backgroundColor: Colors.grey,
      //   shape: const BeveledRectangleBorder(
      //       side: BorderSide(color: Colors.black, height: 2)),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Container(
              color: Colors.amber,
              width: deviceWidth < 1500 ? deviceWidth : deviceWidth * 0.84,
              child: Row(
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Text("placeholder for data"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
