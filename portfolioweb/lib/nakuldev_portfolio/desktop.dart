import 'package:Nakul_Dev/Data/education.dart';
import 'package:Nakul_Dev/Data/exp.dart';
import 'package:Nakul_Dev/Data/profilePic_book.dart';
import 'package:Nakul_Dev/Data/projects.dart';
import 'package:Nakul_Dev/Data/skill.dart';
import 'package:Nakul_Dev/functions/Custom_backdrop_filter.dart';
import 'package:Nakul_Dev/functions/downloadResume.dart';
import 'package:Nakul_Dev/functions/navigate.dart';
import 'package:Nakul_Dev/functions/notifySnackBar.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsive_AboutMe.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsive_Projects.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsive_contactMe.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../styles/styles.dart';

class desktop extends StatefulWidget {
  const desktop({super.key});

  @override
  State<desktop> createState() => _desktopState();
}

class _desktopState extends State<desktop> {
  // double pixelValue = 300;

  @override
  Widget build(BuildContext context) {
    double isdeviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = isdeviceWidth < 1315 ? (MediaQuery.of(context).size.width + 194) : 1536;
    double deviceHeight = 729.5;

    String rurl = 'https://github.com/nakuldevmv/Resume/blob/main/resume.pdf';

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: SizedBox(
          width: deviceWidth < 1365 ? deviceWidth * 0.86 : deviceWidth * 0.84,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  //
                  //Headline
                  //
                  Expanded(
                    flex: 5,
                    child: CustomBox(
                      borderRadius: containerStyle.borderRadius,
                      margin: containerStyle.margin,
                      child: Container(
                          // constraints: const BoxConstraints(
                          //   maxHeight: 248.3,
                          //   // maxWidth: 300,
                          // ),
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          // height: 248.3,

                          // margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                color: textStyles.B.color,
                                Icons.lightbulb,
                                size: deviceWidth * 0.014,
                              ),
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Building the   ",
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
                          )),
                    ),
                  ),
                  //
                  //About
                  //
                  Expanded(
                    flex: 6,
                    child: GestureDetector(
                      onTap: () {
                        navigateTo(context, const toResponsiveLayout_AboutMe());
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: CustomBox(
                          margin: containerStyle.margin,
                          borderRadius: containerStyle.borderRadius,
                          child: Container(
                            decoration: BoxDecoration(
                              color: containerStyle.color,
                              borderRadius: containerStyle.borderRadius,
                            ),
                            padding: containerStyle.padding,
                            // margin: containerStyle.margin,
                            width: deviceWidth * containerStyle.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                              text: 'About ',
                                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                                            ),
                                            TextSpan(
                                              text: 'Me',
                                              style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingI),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      color: textStyles.B.color,
                                      Icons.arrow_outward_rounded,
                                      size: deviceWidth * 0.014,
                                    )
                                  ],
                                ),
                                AutoSizeText(
                                  minFontSize: 10,
                                  maxFontSize: 15,
                                  maxLines: 10,
                                  style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                  "Computer engineer with a strong foundation in problem-solving and software development. Committed to building efficient, reliable solutions and continuously expanding my skills to stay current with evolving technologies.",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  //Resume
                  //
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        downloadResume(rurl);
                        notifySnackBar(context, "My Resume Will Be Downloaded Shortly");
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: CustomBox(
                          borderRadius: containerStyle.borderRadius,
                          margin: containerStyle.margin,
                          child: Container(
                            decoration: BoxDecoration(
                              color: containerStyle.colorR,
                              borderRadius: containerStyle.borderRadius,
                            ),
                            padding: containerStyle.padding,
                            // margin: containerStyle.margin,
                            width: deviceWidth * containerStyle.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  color: textStyles.B.color,
                                  Icons.download_rounded,
                                  size: deviceWidth * 0.014,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AutoSizeText.rich(
                                        maxFontSize: 23,
                                        minFontSize: 5,
                                        maxLines: 1,
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "My ",
                                              style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingB, color: Colors.black),
                                            ),
                                            TextSpan(
                                              text: "Resume",
                                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingI, color: Colors.black, backgroundColor: const Color.fromARGB(255, 119, 119, 119)),
                                            ),
                                          ],
                                        ),
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
                  ),
                ],
              ),
              Column(
                children: [
                  //
                  //Name
                  //
                  Expanded(
                    flex: 1,
                    child: CustomBox(
                      borderRadius: containerStyle.borderRadius,
                      margin: containerStyle.margin,
                      child: Container(
                        decoration: BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.padding,
                        // margin: containerStyle.margin,
                        width: deviceWidth * containerStyle.width,
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(text: "Nakul", style: GoogleFonts.ibmPlexMono(textStyle: textStyles.Name1)),
                              TextSpan(text: "</Dev>", style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Name2)),
                            ])),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  //Pfp
                  //
                  Expanded(
                    flex: 3,
                    child: CustomBox(
                      borderRadius: containerStyle.borderRadius,
                      margin: containerStyle.margin,
                      child: Container(
                        decoration: BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                          image: const DecorationImage(
                            image: AssetImage(profilepic),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        padding: containerStyle.padding,
                        // margin: containerStyle.margin,
                        width: deviceWidth * containerStyle.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              color: textStyles.B.color,
                              Icons.verified_rounded,
                              size: deviceWidth * 0.014,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //
                  //Contact Me
                  //
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        navigateTo(context, const toResponsiveLayout_contactMe());
                      },
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: CustomBox(
                          borderRadius: containerStyle.borderRadius,
                          margin: containerStyle.margin,
                          child: Container(
                            decoration: BoxDecoration(
                              color: containerStyle.color,
                              borderRadius: containerStyle.borderRadius,
                            ),
                            padding: containerStyle.padding,
                            // margin: containerStyle.margin,
                            width: deviceWidth * containerStyle.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: AutoSizeText(
                                        "Have some\nQuestions?",
                                        maxLines: 3,
                                        maxFontSize: 15,
                                        minFontSize: 10,
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                      ),
                                    ),
                                    Icon(
                                      color: textStyles.B.color,
                                      Icons.arrow_outward_rounded,
                                      size: deviceWidth * 0.014,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AutoSizeText.rich(
                                        maxFontSize: 23,
                                        minFontSize: 5,
                                        maxLines: 1,
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Contact ',
                                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                                            ),
                                            TextSpan(
                                              text: 'Me',
                                              style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingI),
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
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  //
                  //Project
                  //
                  Expanded(
                    flex: 4,
                    child: CustomBox(
                      borderRadius: containerStyle.borderRadius,
                      margin: containerStyle.margin,
                      child: Container(
                        decoration: BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.paddingNew,
                        // margin: containerStyle.margin,
                        width: deviceWidth * containerStyle.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                navigateTo(
                                    context,
                                    const toResponsiveLayout_project(
                                      initialIndex: 0,
                                    ));
                              },
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Row(
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
                                              text: 'Projects',
                                              style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingI),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      color: textStyles.B.color,
                                      Icons.arrow_outward_rounded,
                                      size: deviceWidth * 0.014,
                                    )
                                  ],
                                ),
                              ),
                            ),

                            ///padding box
                            SizedBox(
                              height: deviceHeight * 0.015,
                            ),
                            ////
                            Expanded(
                                child: ScrollConfiguration(
                              behavior: const ScrollBehavior().copyWith(scrollbars: false),
                              child: ListView.builder(
                                  itemCount: projects.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        navigateTo(context, toResponsiveLayout_project(initialIndex: index));
                                      },
                                      child: MouseRegion(
                                        cursor: SystemMouseCursors.click,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: ProjectcontainerStyle.color,
                                            borderRadius: EducationcontainerStyle.borderRadius,
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
                                                      color: textStyles.B.color,
                                                      projects[index].icon,
                                                      size: deviceWidth * 0.014,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: deviceWidth * 0.115,
                                                    child: AutoSizeText(minFontSize: 5, maxFontSize: 15, maxLines: 1, style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B), overflow: TextOverflow.ellipsis, projects[index].title),
                                                  ),
                                                ],
                                              ),
                                              Icon(
                                                color: textStyles.B.color,
                                                Icons.arrow_forward_ios_rounded,
                                                size: deviceWidth * 0.014,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  //
                  //Skills
                  //
                  Expanded(
                    flex: 3,
                    child: CustomBox(
                      borderRadius: containerStyle.borderRadius,
                      margin: containerStyle.margin,
                      child: Container(
                        decoration: BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.padding,
                        // margin: containerStyle.margin,
                        width: deviceWidth * containerStyle.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                Icon(
                                  color: textStyles.B.color,
                                  Icons.lens_blur_rounded,
                                  size: deviceWidth * 0.014,
                                )
                              ],
                            ),

                            ///padding box
                            SizedBox(
                              height: deviceHeight * 0.015,
                            ),
                            ////
                            Expanded(
                              flex: 2,
                              child: ScrollConfiguration(
                                behavior: const ScrollBehavior().copyWith(scrollbars: false),
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    // crossAxisSpacing: 3,
                                    // mainAxisSpacing: 3,
                                  ),
                                  itemCount: skills.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        // color: containerStyle.color,
                                        borderRadius: containerStyle.borderRadius,
                                      ),
                                      child: Center(
                                        child: SvgPicture.asset(
                                          skills[index],
                                          // color: textStyles.B.color,
                                          width: deviceWidth * 0.06,
                                          height: deviceHeight * 0.06,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  //
                  //Exp
                  //
                  Expanded(
                    flex: 3,
                    child: CustomBox(
                      borderRadius: containerStyle.borderRadius,
                      margin: containerStyle.margin,
                      child: Container(
                        decoration: BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.paddingNew,
                        // margin: containerStyle.margin,
                        width: deviceWidth * containerStyle.width,
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
                                  color: textStyles.B.color,
                                  Icons.work_history_rounded,
                                  size: deviceWidth * 0.014,
                                )
                              ],
                            ),

                            ///padding box
                            SizedBox(
                              height: deviceHeight * 0.015,
                            ),
                            ////
                            Expanded(
                              child: ScrollConfiguration(
                                behavior: const ScrollBehavior().copyWith(scrollbars: false),
                                child: ListView.builder(
                                  itemCount: Experiences.length,
                                  itemBuilder: (context, index) {
                                    return TimelineTile(
                                      isFirst: Experiences[index].start,
                                      isLast: Experiences[index].end,
                                      afterLineStyle: LineStyle(
                                        thickness: 2,
                                        color: EducationcontainerStyle.color,
                                      ),
                                      beforeLineStyle: LineStyle(
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
                                          decoration: BoxDecoration(
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //
                  //Edu
                  //
                  Expanded(
                    flex: 9,
                    child: CustomBox(
                      borderRadius: containerStyle.borderRadius,
                      margin: containerStyle.margin,
                      child: Container(
                        decoration: BoxDecoration(
                          color: containerStyle.color,
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.paddingNew,
                        // margin: containerStyle.margin,
                        width: deviceWidth * containerStyle.width,
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
                                  color: textStyles.B.color,
                                  Icons.school_rounded,
                                  size: deviceWidth * 0.014,
                                )
                              ],
                            ),

                            ///padding box
                            SizedBox(
                              height: deviceHeight * 0.015,
                            ),
                            ////
                            Expanded(
                              child: ScrollConfiguration(
                                behavior: const ScrollBehavior().copyWith(scrollbars: false),
                                child: ListView.builder(
                                  itemCount: educations.length,
                                  itemBuilder: (context, index) {
                                    return TimelineTile(
                                      isFirst: educations[index].start,
                                      isLast: educations[index].end,
                                      afterLineStyle: LineStyle(
                                        thickness: 2,
                                        color: EducationcontainerStyle.color,
                                      ),
                                      beforeLineStyle: LineStyle(
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
                                          decoration: BoxDecoration(
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
