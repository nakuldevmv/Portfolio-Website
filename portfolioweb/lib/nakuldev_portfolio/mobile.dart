import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/Data/education.dart';
import 'package:portfolioweb/Data/exp.dart';
import 'package:portfolioweb/Data/projects.dart';
import 'package:portfolioweb/Data/skill.dart';
import 'package:portfolioweb/error/notResp.dart';
import 'package:portfolioweb/functions/downloadResume.dart';
import 'package:portfolioweb/functions/navigate.dart';
import 'package:portfolioweb/nakuldev_portfolio/pages/my_projects.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../styles/styles.dart';

class mobile extends StatefulWidget {
  const mobile({super.key});

  @override
  State<mobile> createState() => _mobileState();
}

class _mobileState extends State<mobile> {
  double pixelValue = 300;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    const rurl = 'https://github.com/mobilemv/Resume/blob/main/resume.pdf';

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
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
//
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.padding_mobile,
                        margin: containerStyle.margin_mobile,
                        width: deviceWidth * containerStyle.width_mobile,
                        // height: deviceHeight * containerStyle.height_mobile1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.lightbulb,
                              size: deviceWidth * containerStyle.iconSize,
                            ),
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Innovating the ",
                                      style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                                    ),
                                    TextSpan(
                                      text: "\nFuture",
                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.I),
                                    ),
                                    TextSpan(
                                      text: ", One \nLine of ",
                                      style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                                    ),
                                    TextSpan(
                                      text: "Code",
                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.I),
                                    ),
                                    TextSpan(
                                      text: "\nat a Time",
                                      style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.padding_mobile,
                        margin: containerStyle.margin_mobile,
                        width: deviceWidth * containerStyle.width_mobile,
                        // height: deviceHeight * containerStyle.height_mobile,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.accessibility_new_outlined,
                              size: deviceWidth * containerStyle.iconSize,
                            ),
                            AutoSizeText(
                              minFontSize: 10,
                              maxFontSize: 15,
                              maxLines: 10,
                              style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                              "Innovative and results-driven computer engineer focused on solving complex problems and delivering impactful solutions. Passionate about technology and continuous learning to stay ahead in software development.",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
//
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.padding_mobile,
                        margin: containerStyle.margin_mobile,
                        width: deviceWidth * containerStyle.width_mobile,
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(text: "Nakul", style: GoogleFonts.ibmPlexMono(textStyle: textStyles.Name1)),
                                  TextSpan(text: "</Dev>", style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Name2)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        margin: containerStyle.margin_mobile,
                        width: deviceWidth * containerStyle.width_mobile,
                        height: deviceHeight * containerStyle.height_mobile_img,
                        child: Image.asset(
                          'assets/profile.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              //
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.padding_mobile,
                        margin: containerStyle.margin_mobile,
                        width: deviceWidth * containerStyle.width_mobile,
                        height: deviceHeight * containerStyle.height_mobile_project,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                navigateTo(
                                    context,
                                    const myProject(
                                      initialIndex: 0,
                                    ));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'My ',
                                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                                            ),
                                            TextSpan(
                                              text: 'Projects',
                                              style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingI),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_outward_rounded,
                                    size: deviceWidth * containerStyle.iconSize,
                                  )
                                ],
                              ),
                            ),

                            ///padding box
                            SizedBox(
                              height: deviceHeight * 0.015,
                            ),
                            ////
                            SizedBox(
                              height: deviceHeight * containerStyle.height_mobile_img,
                              child: ListView.builder(
                                itemCount: projects.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      navigateTo(context, myProject(initialIndex: index));
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: ProjectcontainerStyle.color,
                                        borderRadius: ProjectcontainerStyle.borderRadius,
                                      ),
                                      padding: ProjectcontainerStyle.padding,
                                      margin: ProjectcontainerStyle.margin,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(right: 8.0),
                                                child: Icon(
                                                  projects[index].icon,
                                                  size: deviceWidth * containerStyle.iconSize,
                                                ),
                                              ),
                                              SizedBox(
                                                width: deviceWidth * 0.22,
                                                child: FittedBox(
                                                  fit: BoxFit.scaleDown,
                                                  child: Text(
                                                    projects[index].title,
                                                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B),
                                                    overflow: TextOverflow.ellipsis,
                                                    maxLines: 1,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.padding_mobile,
                        margin: containerStyle.margin_mobile,
                        width: deviceWidth * containerStyle.width_mobile,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: AutoSizeText.rich(
                                    maxFontSize: 23,
                                    minFontSize: 5,
                                    maxLines: 1,
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'My ',
                                          style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                                        ),
                                        TextSpan(
                                          text: 'Experience',
                                          style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingI),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.work_history_rounded,
                                  size: deviceWidth * containerStyle.iconSize,
                                )
                              ],
                            ),

                            ///padding box
                            // SizedBox(
                            //   height: deviceHeight * 0.015,
                            // ),
                            ////
                            SizedBox(
                              height: 200,
                              child: ListView.builder(
                                itemCount: Experiences.length,
                                itemBuilder: (context, index) {
                                  return TimelineTile(
                                    isFirst: Experiences[index].start,
                                    isLast: Experiences[index].end,
                                    afterLineStyle: const LineStyle(
                                      thickness: 2,
                                      color: EducationcontainerStyle.color,
                                    ),
                                    beforeLineStyle: const LineStyle(
                                      thickness: 2,
                                      color: EducationcontainerStyle.color,
                                    ),
                                    indicatorStyle: IndicatorStyle(
                                      color: EducationcontainerStyle.color,
                                      iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_right_rounded),
                                    ),
                                    alignment: TimelineAlign.start,
                                    endChild: Expanded(
                                      child: Container(
                                        padding: EducationcontainerStyle.padding,
                                        margin: EducationcontainerStyle.margin,
                                        decoration: const BoxDecoration(
                                          color: EducationcontainerStyle.color,
                                          borderRadius: EducationcontainerStyle.borderRadius,
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                Experiences[index].role,
                                                style: GoogleFonts.jetBrainsMono(textStyle: textStyles.edu_H_B),
                                              ),
                                            ),
                                            FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    Experiences[index].startTime,
                                                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_L),
                                                  ),
                                                  Text(
                                                    ' - ',
                                                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_L),
                                                  ),
                                                  Text(
                                                    Experiences[index].endTime,
                                                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_L),
                                                  ),
                                                  Text(
                                                    ' • ',
                                                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_L),
                                                  ),
                                                  Text(
                                                    Experiences[index].duration,
                                                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_L),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  width: deviceWidth * 0.1,
                                                  child: FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      Experiences[index].companyName,
                                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_N),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.padding_mobile,
                        margin: containerStyle.margin_mobile,
                        width: deviceWidth * containerStyle.width_mobile,
                        height: deviceHeight * containerStyle.height_mobile_skill,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Skilled',
                                            style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingI),
                                          ),
                                          TextSpan(
                                            text: ' In',
                                            style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.lens_blur_rounded,
                                  size: deviceWidth * containerStyle.iconSize,
                                )
                              ],
                            ),

                            // Container(
                            //   color: Colors.amber,
                            //   width: double.infinity,
                            //   child: Column(
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     crossAxisAlignment: CrossAxisAlignment.end,
                            //     children: [
                            //       Icon(
                            //         Icons.lens_blur_rounded,
                            //         size: deviceWidth * containerStyle.iconSize,
                            //       ),
                            //       FittedBox(
                            //         fit: BoxFit.scaleDown,
                            //         child: RichText(
                            //           text: TextSpan(
                            //             children: [
                            //               TextSpan(
                            //                 text: 'Skilled',
                            //                 style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingI),
                            //               ),
                            //               TextSpan(
                            //                 text: ' In',
                            //                 style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                            //               )
                            //             ],
                            //           ),
                            //         ),
                            //       ),
                            //     ],
                            //   ),
                            // ),

                            ///padding box
                            SizedBox(
                              height: deviceHeight * 0.015,
                            ),
                            ////
                            Expanded(
                              // height: deviceHeight * 0.1,
                              child: GridView.builder(
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  // crossAxisSpacing: 3,
                                  // mainAxisSpacing: 3,
                                ),
                                itemCount: skills.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                      color: containerStyle.color,
                                      borderRadius: containerStyle.borderRadius,
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        skills[index],
                                        // ignore: deprecated_member_use
                                        color: textStyles.B.color,
                                        width: deviceWidth * 0.04,
                                        height: deviceHeight * 0.04,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.padding_mobile,
                        margin: containerStyle.margin_mobile,
                        width: deviceWidth * containerStyle.width_mobile,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: AutoSizeText.rich(
                                    maxFontSize: 23,
                                    minFontSize: 5,
                                    maxLines: 1,
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'My ',
                                          style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                                        ),
                                        TextSpan(
                                          text: 'Education',
                                          style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingI),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.school_rounded,
                                  size: deviceWidth * containerStyle.iconSize,
                                )
                              ],
                            ),

                            ///padding box
                            // SizedBox(
                            //   height: deviceHeight * 0.015,
                            // ),
                            ////
                            SizedBox(
                              height: 200,
                              child: ListView.builder(
                                itemCount: educations.length,
                                itemBuilder: (context, index) {
                                  return TimelineTile(
                                    isFirst: educations[index].start,
                                    isLast: educations[index].end,
                                    afterLineStyle: const LineStyle(
                                      thickness: 2,
                                      color: EducationcontainerStyle.color,
                                    ),
                                    beforeLineStyle: const LineStyle(
                                      thickness: 2,
                                      color: EducationcontainerStyle.color,
                                    ),
                                    indicatorStyle: IndicatorStyle(
                                      color: EducationcontainerStyle.color,
                                      iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_right_rounded),
                                    ),
                                    alignment: TimelineAlign.start,
                                    endChild: Expanded(
                                      flex: 5,
                                      child: Container(
                                        padding: EducationcontainerStyle.padding,
                                        margin: EducationcontainerStyle.margin,
                                        decoration: const BoxDecoration(
                                          color: EducationcontainerStyle.color,
                                          borderRadius: EducationcontainerStyle.borderRadius,
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                educations[index].institutionName,
                                                style: GoogleFonts.jetBrainsMono(textStyle: textStyles.edu_H_B),
                                              ),
                                            ),
                                            FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    educations[index].startTime,
                                                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_L),
                                                  ),
                                                  const Text(" - "),
                                                  Text(
                                                    educations[index].endTime,
                                                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_L),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            educations[index].department != ''
                                                ? FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      educations[index].department,
                                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_N),
                                                    ),
                                                  )
                                                : const Offstage(),
                                            educations[index].grade != ''
                                                ? FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      educations[index].grade,
                                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_N),
                                                    ),
                                                  )
                                                : const Offstage(),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )
              //
            ],
          ),
        ),
      ),
    );
  }
}
