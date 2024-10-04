import 'package:Nakul_Dev/Data/projects.dart';
import 'package:Nakul_Dev/functions/Code_Demo_button.dart';
import 'package:Nakul_Dev/styles/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class myProject_mobile extends StatefulWidget {
  final int initialIndex;
  const myProject_mobile({super.key, required this.initialIndex});

  @override
  State<myProject_mobile> createState() => _myProject_mobileState();
}

class _myProject_mobileState extends State<myProject_mobile> {
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
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Center(
            child: SizedBox(
              height: double.infinity,
              child: Column(
                children: [
                  // Scrollable Positioned List for Project Details
                  Expanded(
                    child: ScrollablePositionedList.builder(
                      itemCount: projects.length,
                      itemScrollController: _scrollController,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              width: deviceWidth,
                              height: 250,
                              margin: const EdgeInsets.only(top: 10, bottom: 10),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage('assets/background_image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
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
                                            children: [
                                              AutoSizeText(
                                                "Code ",
                                                style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                                minFontSize: 5,
                                                maxFontSize: 15,
                                                maxLines: 1,
                                              ),
                                              Icon(
                                                Icons.code_rounded,
                                                size: deviceWidth * 0.05,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
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
                                            children: [
                                              AutoSizeText(
                                                "Demo ",
                                                style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                                minFontSize: 5,
                                                maxFontSize: 15,
                                                maxLines: 1,
                                              ),
                                              Icon(
                                                Icons.add_to_home_screen_rounded,
                                                size: deviceWidth * 0.05,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
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
