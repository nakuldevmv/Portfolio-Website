// ignore_for_file: deprecated_member_use

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/Data/projects.dart';
import 'package:portfolioweb/functions/launch_url.dart';
import 'package:portfolioweb/styles/styles.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class myProject extends StatefulWidget {
  final int initialIndex; // Accept the initial index

  const myProject({super.key, required this.initialIndex});

  @override
  _myProjectState createState() => _myProjectState();
}

class _myProjectState extends State<myProject> {
  final ItemScrollController _scrollController = ItemScrollController();

  @override
  void initState() {
    super.initState();

    // Scroll to the initial index after the build is complete
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.scrollTo(
        index: widget.initialIndex,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    });
  }

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
          padding: const EdgeInsets.all(0),
          child: Center(
            child: SizedBox(
              height: double.infinity,
              width: deviceWidth < 1365 ? deviceWidth * 0.86 : deviceWidth * 0.84,
              child: Column(
                children: [
                  // Scrollable Positioned List for Project Details
                  Expanded(
                    child: ScrollablePositionedList.builder(
                      itemCount: projects.length,
                      itemScrollController: _scrollController,
                      itemBuilder: (context, index) {
                        if (index % 2 == 0) {
                          // Return a container for even indices
                          return Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: MyProject_containerStyle.color,
                                        borderRadius: MyProject_containerStyle.borderRadius,
                                      ),
                                      padding: MyProject_containerStyle.padding,
                                      margin: MyProject_containerStyle.margin,
                                      height: deviceHeight * MyProject_containerStyle.height,
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          AutoSizeText(
                                            projects[index].title,
                                            style: GoogleFonts.ibmPlexMono(textStyle: textStyles.projectTitle),
                                            minFontSize: 10,
                                            maxFontSize: 25,
                                            maxLines: 2,
                                          ),
                                          Icon(
                                            projects[index].icon,
                                            size: deviceWidth * 0.1,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            urlLaunch(projects[index].githubLink);
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: MyProject_containerStyle.color,
                                              borderRadius: MyProject_containerStyle.borderRadius,
                                            ),
                                            padding: MyProject_containerStyle.padding,
                                            margin: MyProject_containerStyle.margin,
                                            width: deviceWidth * MyProject_containerStyle.buttonWidth,
                                            height: deviceHeight * 0.075,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    "Code ",
                                                    style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                                    minFontSize: 5,
                                                    maxFontSize: 15,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.code_rounded,
                                                  size: deviceWidth * 0.015,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            urlLaunch(projects[index].demoVideoLink);
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: MyProject_containerStyle.color,
                                              borderRadius: MyProject_containerStyle.borderRadius,
                                            ),
                                            padding: MyProject_containerStyle.padding,
                                            margin: MyProject_containerStyle.margin,
                                            width: deviceWidth * MyProject_containerStyle.buttonWidth,
                                            height: deviceHeight * 0.075,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    "Demo ",
                                                    style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                                    minFontSize: 5,
                                                    maxFontSize: 15,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.add_to_home_screen_rounded,
                                                  size: deviceWidth * 0.015,
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: MyProject_containerStyle.color,
                                    borderRadius: MyProject_containerStyle.borderRadius,
                                  ),
                                  padding: MyProject_containerStyle.padding,
                                  margin: MyProject_containerStyle.margin,
                                  // width: deviceWidth * MyProject_containerStyle.width,
                                  height: deviceHeight * MyProject_containerStyle.Long_height,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        projects[index].description,
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.descriptions),
                                        minFontSize: 5,
                                        maxFontSize: 15,
                                        maxLines: 2,
                                      ),
                                      AutoSizeText(
                                        "Key Features",
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Dheadings),
                                        minFontSize: 10,
                                        maxFontSize: 18,
                                        maxLines: 1,
                                      ),
                                      AutoSizeText(
                                        projects[index].keyFeatures,
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.descriptions),
                                        minFontSize: 5,
                                        maxFontSize: 15,
                                        maxLines: 4,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            "Tech Stack",
                                            style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Dheadings),
                                            minFontSize: 10,
                                            maxFontSize: 18,
                                            maxLines: 1,
                                          ),
                                          SizedBox(
                                            height: deviceHeight * 0.025,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                projects[index].dartSvg,
                                                color: textStyles.B.color,
                                                width: deviceWidth * 0.06,
                                                height: deviceHeight * 0.06,
                                              ),
                                              SizedBox(
                                                width: deviceWidth * 0.02,
                                              ),
                                              SvgPicture.asset(
                                                projects[index].flutterSvg,
                                                color: textStyles.B.color,
                                                width: deviceWidth * 0.06,
                                                height: deviceHeight * 0.06,
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          );
                        } else {
                          // Return a container for odd indices
                          return Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: MyProject_containerStyle.color,
                                    borderRadius: MyProject_containerStyle.borderRadius,
                                  ),
                                  padding: MyProject_containerStyle.padding,
                                  margin: MyProject_containerStyle.margin,
                                  // width: deviceWidth * MyProject_containerStyle.width,
                                  height: deviceHeight * MyProject_containerStyle.Long_height,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        projects[index].description,
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.descriptions),
                                        minFontSize: 5,
                                        maxFontSize: 15,
                                        maxLines: 2,
                                      ),
                                      AutoSizeText(
                                        "Key Features",
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Dheadings),
                                        minFontSize: 10,
                                        maxFontSize: 18,
                                        maxLines: 1,
                                      ),
                                      AutoSizeText(
                                        projects[index].keyFeatures,
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.descriptions),
                                        minFontSize: 5,
                                        maxFontSize: 15,
                                        maxLines: 4,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          AutoSizeText(
                                            "Tech Stack",
                                            style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Dheadings),
                                            minFontSize: 10,
                                            maxFontSize: 18,
                                            maxLines: 1,
                                          ),
                                          SizedBox(
                                            height: deviceHeight * 0.025,
                                          ),
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                projects[index].dartSvg,
                                                color: textStyles.B.color,
                                                width: deviceWidth * 0.06,
                                                height: deviceHeight * 0.06,
                                              ),
                                              SizedBox(
                                                width: deviceWidth * 0.02,
                                              ),
                                              SvgPicture.asset(
                                                projects[index].flutterSvg,
                                                color: textStyles.B.color,
                                                width: deviceWidth * 0.06,
                                                height: deviceHeight * 0.06,
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: MyProject_containerStyle.color,
                                        borderRadius: MyProject_containerStyle.borderRadius,
                                      ),
                                      padding: MyProject_containerStyle.padding,
                                      margin: MyProject_containerStyle.margin,
                                      height: deviceHeight * MyProject_containerStyle.height,
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          AutoSizeText(
                                            projects[index].title,
                                            style: GoogleFonts.ibmPlexMono(textStyle: textStyles.projectTitle),
                                            minFontSize: 10,
                                            maxFontSize: 25,
                                            maxLines: 2,
                                          ),
                                          Icon(
                                            projects[index].icon,
                                            size: deviceWidth * 0.1,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            urlLaunch(projects[index].githubLink);
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: MyProject_containerStyle.color,
                                              borderRadius: MyProject_containerStyle.borderRadius,
                                            ),
                                            padding: MyProject_containerStyle.padding,
                                            margin: MyProject_containerStyle.margin,
                                            width: deviceWidth * MyProject_containerStyle.buttonWidth,
                                            height: deviceHeight * 0.075,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    "Code ",
                                                    style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                                    minFontSize: 5,
                                                    maxFontSize: 15,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.code_rounded,
                                                  size: deviceWidth * 0.015,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            urlLaunch(projects[index].demoVideoLink);
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: MyProject_containerStyle.color,
                                              borderRadius: MyProject_containerStyle.borderRadius,
                                            ),
                                            padding: MyProject_containerStyle.padding,
                                            margin: MyProject_containerStyle.margin,
                                            width: deviceWidth * MyProject_containerStyle.buttonWidth,
                                            height: deviceHeight * 0.075,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: AutoSizeText(
                                                    "Demo ",
                                                    style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                                    minFontSize: 5,
                                                    maxFontSize: 15,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.add_to_home_screen_rounded,
                                                  size: deviceWidth * 0.015,
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
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
