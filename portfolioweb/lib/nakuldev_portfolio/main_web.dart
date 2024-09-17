import 'dart:math';
import 'dart:ui';

import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/Data/projects.dart';
import 'package:portfolioweb/Data/skill.dart';
import 'package:portfolioweb/functions/downloadResume.dart';
import 'package:rive_animated_icon/rive_animated_icon.dart';
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
        decoration: const BoxDecoration(
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
                            decoration: const BoxDecoration(
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
                                const Icon(Icons.arrow_outward_rounded),
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
                          decoration: const BoxDecoration(
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
                              const Icon(Icons.accessibility_new_outlined),
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
                            decoration: const BoxDecoration(
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
                                const Icon(Icons.download_rounded)
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
                          decoration: const BoxDecoration(
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
                          decoration: const BoxDecoration(
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
                          decoration: const BoxDecoration(
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
                                  const Icon(Icons.arrow_outward_rounded),
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
                          decoration: const BoxDecoration(
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
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'My ',
                                            style: GoogleFonts.ibmPlexMono(
                                                textStyle: textStyles.B),
                                          ),
                                          TextSpan(
                                            text: 'Projects',
                                            style: GoogleFonts.jetBrainsMono(
                                                textStyle: textStyles.I),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_outward_rounded)
                                ],
                              ),
                              Expanded(
                                  child: ListView.builder(
                                      itemCount: projects.length,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          decoration: const BoxDecoration(
                                            color: ProjectcontainerStyle.color,
                                            borderRadius:
                                                containerStyle.borderRadius,
                                          ),
                                          padding:
                                              ProjectcontainerStyle.padding,
                                          margin: ProjectcontainerStyle.margin,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 8.0),
                                                    child: Icon(
                                                        projects[index].icon),
                                                  ),
                                                  SizedBox(
                                                    width: deviceWidth * 0.115,
                                                    child: Text(
                                                        style: GoogleFonts
                                                            .ibmPlexMono(
                                                                textStyle:
                                                                    textStyles
                                                                        .P2B),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        projects[index].title),
                                                  ),
                                                ],
                                              ),
                                              const Icon(Icons
                                                  .arrow_forward_ios_rounded)
                                            ],
                                          ),
                                        );
                                      }))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: const BoxDecoration(
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
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'My ',
                                            style: GoogleFonts.ibmPlexMono(
                                                textStyle: textStyles.B),
                                          ),
                                          TextSpan(
                                            text: 'Skills',
                                            style: GoogleFonts.jetBrainsMono(
                                                textStyle: textStyles.I),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Icon(Icons.arrow_outward_rounded)
                                ],
                              ),
                              Expanded(
                                ///////////////////////////////////////////
                                child: GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3, // Number of columns
                                    childAspectRatio:
                                        1, // Aspect ratio of each child
                                    crossAxisSpacing:
                                        10, // Spacing between columns
                                    mainAxisSpacing: 10, // Spacing between rows
                                  ),
                                  itemCount: skills.length, // Number of skills
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                        color: containerStyle.color,
                                        borderRadius:
                                            containerStyle.borderRadius,
                                      ),
                                      child: Center(
                                        child: Icon(
                                          skills[index]
                                              .icon, // Icon for each skill
                                          size: 40, // Icon size
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                ///////////////////////////////////////////
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: const Text("Experiance"),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: const Text("Education"),
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
