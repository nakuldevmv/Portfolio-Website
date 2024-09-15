import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:google_fonts/google_fonts.dart';
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
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Nakul </Dev>"),
      //   backgroundColor: Colors.grey,
      //   shape: const BeveledRectangleBorder(
      //       side: BorderSide(color: Colors.black, height: 2)),
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/background_image.jpg'), // replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: SizedBox(
              // color: Colors.amber,
              width:
                  deviceWidth < 1365 ? deviceWidth * 0.86 : deviceWidth * 0.84,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.arrow_outward_rounded),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Innovating the ",
                                          style: GoogleFonts.pixelifySans(
                                              textStyle: textStyles.B),
                                        ),
                                        TextSpan(
                                          text: "Future, ",
                                          style: GoogleFonts.ibmPlexMono(
                                              textStyle: textStyles.I),
                                        ),
                                        TextSpan(
                                          text: "\nOne Line of ",
                                          style: GoogleFonts.pixelifySans(
                                              textStyle: textStyles.B),
                                        ),
                                        TextSpan(
                                          text: "Code",
                                          style: GoogleFonts.ibmPlexMono(
                                              textStyle: textStyles.I),
                                        ),
                                        TextSpan(
                                          text: " at a Time",
                                          style: GoogleFonts.pixelifySans(
                                              textStyle: textStyles.B),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )),
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.accessibility_new_outlined),
                              Text(
                                  style: GoogleFonts.pixelifySans(
                                      textStyle: textStyles.P1),
                                  "Innovative and results-driven computer engineer focused on solving complex problems and delivering impactful solutions. Passionate about technology and continuous learning to stay ahead in software development."),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          // onTap: () {
                          //   FileDownloader.downloadFile(
                          //     url:
                          //         "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/9B368B465A4DC909CDB6E799ACB64899B54E731B6D894FA5B080D75DB2F30533/scale?aspectRatio=1.78&format=jpeg",
                          //     name: "Resume",
                          //     downloadDestination:
                          //         DownloadDestinations.appFiles,
                          //   );
                          // },
                          child: Container(
                            decoration: BoxDecoration(
                              color: containerStyle.color,
                              borderRadius: containerStyle.borderRadius,
                            ),
                            padding: containerStyle.padding,
                            margin: containerStyle.margin,
                            width: deviceWidth * containerStyle.width,
                            child: Text("Resume"),
                          ),
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
                          child: Center(
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                  text: "Nakul",
                                  style: GoogleFonts.ibmPlexMono(
                                      textStyle: textStyles.Name1)),
                              TextSpan(
                                  text: " </Dev>",
                                  style: GoogleFonts.pixelifySans(
                                      textStyle: textStyles.Name2)),
                            ])),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                            image: DecorationImage(
                              image: AssetImage('assets/profile.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
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
