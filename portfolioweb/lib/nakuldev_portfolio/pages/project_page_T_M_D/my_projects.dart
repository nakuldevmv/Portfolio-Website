import 'package:Nakul_Dev/Data/projects.dart';
import 'package:Nakul_Dev/functions/Code_Demo_button.dart';
import 'package:Nakul_Dev/styles/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class myProject extends StatefulWidget {
  final int initialIndex;
  const myProject({super.key, required this.initialIndex});

  @override
  State<myProject> createState() => _myProject_mobileState();
}

class _myProject_mobileState extends State<myProject> {
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
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Center(
            child: SizedBox(
              height: double.infinity,
              child: Column(
                children: [
                  Expanded(
                    //
                    child: ScrollConfiguration(
                      behavior: const ScrollBehavior().copyWith(scrollbars: false),
                      //
                      child: ScrollablePositionedList.builder(
                        itemCount: projects.length,
                        itemScrollController: _scrollController,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //SS
                                Stack(
                                  children: [
                                    Container(
                                      width: deviceWidth / 4,
                                      height: 300,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          bottomLeft: Radius.circular(10),
                                        ),
                                        color: Color.fromARGB(127, 0, 0, 0),
                                      ),
                                    ),
                                    Container(
                                      width: deviceWidth / 4,
                                      height: 300,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        image: DecorationImage(
                                          image: AssetImage(projects[index].image),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            projects[index].icon,
                                            size: deviceWidth * 0.1,
                                            color: Colors.white,
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: [
                                              //code btn
                                              Container(
                                                padding: const EdgeInsets.all(5),
                                                margin: const EdgeInsets.only(left: 10, right: 10),
                                                height: 40,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(10),
                                                      topRight: Radius.circular(10),
                                                    ),
                                                    color: EducationcontainerStyle.color),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    codeButton(context, projects[index]);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      AutoSizeText(
                                                        "Code",
                                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                                        minFontSize: 5,
                                                        maxFontSize: 15,
                                                        maxLines: 1,
                                                      ),
                                                      const Icon(
                                                        Icons.code_rounded,
                                                        size: 30,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              //demo btn
                                              Container(
                                                padding: const EdgeInsets.all(5),
                                                margin: const EdgeInsets.only(left: 10, right: 10),
                                                height: 40,
                                                width: 80,
                                                decoration: const BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(10),
                                                      topRight: Radius.circular(10),
                                                    ),
                                                    color: EducationcontainerStyle.color),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    demoButton(context, projects[index]);
                                                  },
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      AutoSizeText(
                                                        "Demo",
                                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                                        minFontSize: 5,
                                                        maxFontSize: 15,
                                                        maxLines: 1,
                                                      ),
                                                      const Icon(
                                                        Icons.add_to_home_screen_rounded,
                                                        size: 30,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 300,
                                  width: deviceWidth / 1.5,
                                  // margin: const EdgeInsets.only(bottom: 10),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(127, 0, 0, 0),
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        //title
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
                                          child: SizedBox(
                                            child: AutoSizeText(
                                              projects[index].title,
                                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.projectTitle),
                                              minFontSize: 10,
                                              maxFontSize: 25,
                                              maxLines: 1,
                                            ),
                                          ),
                                        ),
                                        //description
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                                          child: SizedBox(
                                            child: AutoSizeText(
                                              projects[index].description,
                                              style: GoogleFonts.jetBrainsMono(textStyle: textStyles.descriptions),
                                              minFontSize: 5,
                                              maxFontSize: 15,
                                              maxLines: 3,
                                            ),
                                          ),
                                        ),
                                        //key features
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                                          child: AutoSizeText(
                                            "Key Features",
                                            style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Dheadings),
                                            minFontSize: 10,
                                            maxFontSize: 18,
                                            maxLines: 1,
                                          ),
                                        ),
                                        //keyfetures
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
                                          child: AutoSizeText(
                                            projects[index].keyFeatures,
                                            style: GoogleFonts.jetBrainsMono(textStyle: textStyles.descriptions),
                                            minFontSize: 5,
                                            maxFontSize: 15,
                                            maxLines: 4,
                                          ),
                                        ),

                                        //techstack
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 8),
                                          child: SizedBox(
                                            width: 200,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                AutoSizeText(
                                                  "Tech Stack :",
                                                  style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Dheadings),
                                                  minFontSize: 10,
                                                  maxFontSize: 18,
                                                  maxLines: 1,
                                                ),
                                                SvgPicture.asset(
                                                  projects[index].dartSvg,
                                                  color: textStyles.B.color,
                                                  width: 25,
                                                ),
                                                SvgPicture.asset(
                                                  projects[index].flutterSvg,
                                                  color: textStyles.B.color,
                                                  width: 25,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
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
