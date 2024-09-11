import 'package:flutter/material.dart';
import 'package:portfolioweb/mediaquery_value/mQ.dart';

import '../styles/styles.dart';

class nakuldev extends StatefulWidget {
  const nakuldev({super.key});

  @override
  State<nakuldev> createState() => _nakuldevState();
}

class _nakuldevState extends State<nakuldev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Nakul </Dev>"),
      //   backgroundColor: Colors.grey,
      //   shape: const BeveledRectangleBorder(
      //       side: BorderSide(color: Colors.black, height: 2)),
      // ),
      //   body: Padding(
      //     padding: const EdgeInsets.all(16),
      //     child: Center(
      //       child: SizedBox(
      //         width: widthValue(context, 1320),
      //         child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             Column(
      //               children: [
      //                 Expanded(
      //                   flex: 3,
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //                 Expanded(
      //                   flex: 3,
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //                 Expanded(
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Column(
      //               children: [
      //                 Expanded(
      //                   flex: 1,
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //                 Expanded(
      //                   flex: 3,
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //                 Expanded(
      //                   flex: 2,
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Column(
      //               children: [
      //                 Expanded(
      //                   flex: 3,
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //                 Expanded(
      //                   flex: 2,
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //             Column(
      //               children: [
      //                 Expanded(
      //                   flex: 2,
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //                 Expanded(
      //                   flex: 4,
      //                   child: Container(
      //                     decoration: BoxDecoration(
      //                       color: containerStyle.color,
      //                       borderRadius: containerStyle.borderRadius,
      //                     ),
      //                     padding: containerStyle.padding,
      //                     margin: containerStyle.margin,
      //                     width: widthValue(context, containerStyle.width),
      //                     child: Text("placeholder for data"),
      //                   ),
      //                 ),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      body: Container(
        height: widthValue(context, 600),
        width: widthValue(context, 600),
        color: Colors.amber,
      ),
    );
  }
}
