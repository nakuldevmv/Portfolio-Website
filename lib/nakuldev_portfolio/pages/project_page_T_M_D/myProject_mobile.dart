import 'package:nakul_dev/Data/projects.dart';
import 'package:nakul_dev/functions/Custom_backdrop_filter.dart';
import 'package:nakul_dev/functions/demo_code_btn_widget.dart';
import 'package:nakul_dev/styles/styles.dart';
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
    return Padding(
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
                      final isLastItem = index == projects.length - 1;

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //SS
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomBox(
                                margin: const EdgeInsets.only(top: 10),
                                borderRadius: RadUp,
                                child: Container(
                                  width: deviceWidth,
                                  height: 250,
                                  decoration: BoxDecoration(
                                    borderRadius: RadUp,
                                    color: mobile_ProjectContainer.color,
                                  ),
                                ),
                              ),
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(
                                    width: deviceWidth - (40 + 16 + 16),
                                    height: 250 - 40,
                                    margin: const EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      image: DecorationImage(
                                        image:
                                            AssetImage(projects[index].image),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: [GlobalShadow],
                                    ),
                                  ),
                                  Container(
                                    width: deviceWidth - (40 + 16 + 16),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10),
                                          bottomRight: Radius.circular(10)),
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromARGB(0, 0, 0, 0),
                                          Color.fromARGB(99, 0, 0, 0),
                                          Color.fromARGB(199, 0, 0, 0),
                                          Color.fromARGB(230, 0, 0, 0),
                                          Color.fromARGB(255, 0, 0, 0)
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                    child: demo_code_button(index: index),
                                  )
                                ],
                              ),
                            ],
                          ),
                          CustomBox(
                            margin: const EdgeInsets.only(bottom: 10),
                            borderRadius: RadBottom,
                            child: Container(
                              width: deviceWidth,
                              // margin: const EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color: mobile_ProjectContainer.color,
                                borderRadius: RadBottom,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //title
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 5),
                                    child: SizedBox(
                                      child: AutoSizeText(
                                        projects[index].title,
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.projectTitle),
                                        minFontSize: 10,
                                        maxFontSize: 25,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                  //description
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16, right: 16, top: 10),
                                    child: SizedBox(
                                      child: AutoSizeText(
                                        projects[index].description,
                                        style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.descriptions),
                                        minFontSize: 5,
                                        maxFontSize: 15,
                                        maxLines: 3,
                                      ),
                                    ),
                                  ),
                                  //techstack
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                        top: 10,
                                        bottom: 16),
                                    child: SizedBox(
                                      width: 200,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          AutoSizeText(
                                            "Tech Stack :",
                                            style: GoogleFonts.chakraPetch(
                                                textStyle:
                                                    textStyles.Dheadings),
                                            minFontSize: 10,
                                            maxFontSize: 18,
                                            maxLines: 1,
                                          ),
                                          SvgPicture.asset(
                                            projects[index].dartSvg,
                                            // color: textStyles.B.color,
                                            width: 25,
                                          ),
                                          SvgPicture.asset(
                                            projects[index].flutterSvg,
                                            // color: textStyles.B.color,
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
                          if (isLastItem) const SizedBox(height: 100)
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
