import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/functions/downloadResume.dart';
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: SizedBox(
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(Icons.arrow_outward_rounded),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Innovating the ",
                                        style: GoogleFonts.jetBrainsMono(
                                            textStyle: textStyles.B),
                                      ),
                                      TextSpan(
                                        text: "Future, ",
                                        style: GoogleFonts.ibmPlexMono(
                                            textStyle: textStyles.I),
                                      ),
                                      TextSpan(
                                        text: "\nOne Line of ",
                                        style: GoogleFonts.jetBrainsMono(
                                            textStyle: textStyles.B),
                                      ),
                                      TextSpan(
                                        text: "Code",
                                        style: GoogleFonts.ibmPlexMono(
                                            textStyle: textStyles.I),
                                      ),
                                      TextSpan(
                                        text: " at a Time",
                                        style: GoogleFonts.jetBrainsMono(
                                            textStyle: textStyles.B),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
                                style: GoogleFonts.jetBrainsMono(
                                    textStyle: textStyles.P1),
                                "Innovative and results-driven computer engineer focused on solving complex problems and delivering impactful solutions. Passionate about technology and continuous learning to stay ahead in software development.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            downloadResume('assets/resume.pdf');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: containerStyle.color,
                              borderRadius: containerStyle.borderRadius,
                            ),
                            padding: containerStyle.padding,
                            margin: containerStyle.margin,
                            width: deviceWidth * containerStyle.width,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Click Here To Download My",
                                      style: GoogleFonts.jetBrainsMono(
                                          textStyle: textStyles.P2B),
                                    ),
                                    Text(
                                      "Resume",
                                      style: GoogleFonts.ibmPlexMono(
                                          textStyle: textStyles.P2I),
                                    ),
                                  ],
                                ),
                                Icon(Icons.download_rounded)
                              ],
                            ),
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
                                  text: "</Dev>",
                                  style: GoogleFonts.jetBrainsMono(
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Have some\nQuestions?",
                                    style: GoogleFonts.jetBrainsMono(
                                        textStyle: textStyles.P1),
                                  ),
                                  Icon(Icons.arrow_outward_rounded),
                                ],
                              ),
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Contact ',
                                          style: GoogleFonts.ibmPlexMono(
                                              textStyle: textStyles.B),
                                        ),
                                        TextSpan(
                                          text: 'Me',
                                          style: GoogleFonts.jetBrainsMono(
                                              textStyle: textStyles.I),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.8),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'My ',
                                              style: GoogleFonts.ibmPlexMono(
                                                  textStyle: textStyles.B),
                                            ),
                                            TextSpan(
                                              text: 'Project',
                                              style: GoogleFonts.jetBrainsMono(
                                                  textStyle: textStyles.I),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Icon(Icons.arrow_outward_rounded)
                                  ],
                                ),
                                Expanded(
                                  child: ListView(
                                    shrinkWrap: true,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.amberAccent,
                                          borderRadius:
                                              containerStyle.borderRadius,
                                        ),
                                        // padding: containerStyle.padding,
                                        // margin: containerStyle.margin,
                                        child: Row(
                                          children: [
                                            Icon(Icons.calculate),
                                            Text(
                                                style: GoogleFonts.ibmPlexMono(
                                                    textStyle: textStyles.P2B),
                                                overflow: TextOverflow.ellipsis,
                                                "Calculator Using Flutter"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
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
                          child: Text("Skills"),
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
                          child: Text("Experiance"),
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
                          child: Text("Education"),
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
