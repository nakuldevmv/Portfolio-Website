import 'package:flutter/material.dart';

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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              //
              mainAxisAlignment: MainAxisAlignment.start,
              //
              children: [
                Row(
                  children: [
                    Container(
                      //heading
                      width: 300,
                      height: 300,
                      color: const Color(0xFF428172),
                    ),
                    Container(
                      //name
                      width: 300,
                      height: 100,
                      color: const Color(0xFFA1ADAA),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      //about
                      width: 300,
                      height: 300,
                      color: const Color(0xFF004B76),
                    ),
                    Container(
                      //pic
                      width: 300,
                      height: 400,
                      color: const Color(0xFF838B89),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      //resume
                      width: 300,
                      height: 100,
                      color: const Color(0xFF814242),
                    ),
                    Container(
                      //contact
                      width: 300,
                      height: 200,
                      color: const Color(0xFF5CD0E0),
                    )
                  ],
                ),
              ],
            ),
            Column(
              //
              mainAxisAlignment: MainAxisAlignment.start,
              //
              children: [
                Row(
                  children: [
                    Container(
                      //projects
                      width: 340,
                      height: 400,
                      color: const Color(0xFF534281),
                    ),
                    Container(
                      //exp
                      width: 255,
                      height: 215,
                      color: const Color(0xFFB2C155),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      //skills
                      width: 340,
                      height: 320,
                      color: const Color(0xFF9B7AC6),
                    ),
                    Container(
                      //edu
                      width: 255,
                      height: 505,
                      color: const Color(0xFFB2C155),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
