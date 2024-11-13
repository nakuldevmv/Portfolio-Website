import 'package:nakul_dev/Data/projects.dart';
import 'package:nakul_dev/functions/Custom_backdrop_filter.dart';
import 'package:nakul_dev/functions/demo_code_btn_widget.dart';
import 'package:nakul_dev/styles/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class myProject_tablet extends StatefulWidget {
  final int initialIndex;
  const myProject_tablet({super.key, required this.initialIndex});

  @override
  State<myProject_tablet> createState() => _myProject_tabletState();
}

class _myProject_tabletState extends State<myProject_tablet> {
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
                child: ScrollConfiguration(
                  behavior: const ScrollBehavior().copyWith(scrollbars: false),
                  child: ScrollablePositionedList.builder(
                    itemCount: (projects.length + 1) ~/ 2,
                    itemScrollController: _scrollController,
                    itemBuilder: (context, index) {
                      final isLastItem =
                          index == (projects.length + 1) ~/ 2 - 1;

                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (index * 2 < projects.length)
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 8, top: 8),
                                  child:
                                      buildProjectCard(index * 2, deviceWidth),
                                ),
                              if (index * 2 + 1 < projects.length)
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 8),
                                  child: buildProjectCard(
                                      index * 2 + 1, deviceWidth),
                                ),
                            ],
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

  Widget buildProjectCard(int index, double deviceWidth) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CustomBox(
              borderRadius: RadUp,
              child: Container(
                width: deviceWidth / 2.179,
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
                  width: (deviceWidth / 2.179) - 40,
                  height: 250 - 40,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage(projects[index].image),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [GlobalShadow],
                  ),
                ),
                Container(
                  width: (deviceWidth / 2.179) - 39.5,
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
            height: 170,
            width: deviceWidth / 2.179,
            decoration: BoxDecoration(
                color: mobile_ProjectContainer.color, borderRadius: RadBottom),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 8, top: 15),
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
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 8, top: 10),
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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 8, top: 10, bottom: 10),
                  child: SizedBox(
                    width: 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          "Tech Stack :",
                          style: GoogleFonts.chakraPetch(
                              textStyle: textStyles.Dheadings),
                          minFontSize: 10,
                          maxFontSize: 18,
                          maxLines: 1,
                        ),
                        SvgPicture.asset(
                          projects[index].dartSvg,
                          width: 25,
                        ),
                        SvgPicture.asset(
                          projects[index].flutterSvg,
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
    );
  }
}
