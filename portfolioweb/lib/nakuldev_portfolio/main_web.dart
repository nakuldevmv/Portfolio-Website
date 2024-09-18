import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/Data/education.dart';
import 'package:portfolioweb/Data/exp.dart';
import 'package:portfolioweb/Data/projects.dart';
import 'package:portfolioweb/Data/skill.dart';
import 'package:portfolioweb/functions/downloadResume.dart';
import 'package:timeline_tile/timeline_tile.dart';
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
              width: deviceWidth < 1365 ? deviceWidth * 0.86 : deviceWidth * 0.84,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 5,
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
                                const Icon(Icons.lightbulb),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Innovating the ",
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                                      ),
                                      TextSpan(
                                        text: "Future, ",
                                        style: GoogleFonts.ibmPlexMono(textStyle: textStyles.I),
                                      ),
                                      TextSpan(
                                        text: "\nOne Line of ",
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                                      ),
                                      TextSpan(
                                        text: "Code",
                                        style: GoogleFonts.ibmPlexMono(textStyle: textStyles.I),
                                      ),
                                      TextSpan(
                                        text: " at a Time",
                                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Expanded(
                        flex: 6,
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
                                style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                                "Innovative and results-driven computer engineer focused on solving complex problems and delivering impactful solutions. Passionate about technology and continuous learning to stay ahead in software development.",
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: GestureDetector(
                          onTap: () {
                            downloadResume('assets/Resume/Resume.pdf');
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 183, 183, 183),
                              borderRadius: containerStyle.borderRadius,
                            ),
                            padding: containerStyle.padding,
                            margin: containerStyle.margin,
                            width: deviceWidth * containerStyle.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(Icons.download_rounded, color: Colors.black),
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
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
                                  ],
                                ),
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
                              TextSpan(text: "Nakul", style: GoogleFonts.ibmPlexMono(textStyle: textStyles.Name1)),
                              TextSpan(text: "</Dev>", style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Name2)),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Have some\nQuestions?",
                                    style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
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
                                          style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                                        ),
                                        TextSpan(
                                          text: 'Me',
                                          style: GoogleFonts.jetBrainsMono(textStyle: textStyles.HeadingI),
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
                        flex: 4,
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
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
                                                    child: Icon(projects[index].icon),
                                                  ),
                                                  SizedBox(
                                                    width: deviceWidth * 0.115,
                                                    child: Text(style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B), overflow: TextOverflow.ellipsis, projects[index].title),
                                                  ),
                                                ],
                                              ),
                                              const Icon(Icons.arrow_forward_ios_rounded)
                                            ],
                                          ),
                                        );
                                      }))
                            ],
                          ),
                        ),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
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
                                  const Icon(Icons.lens_blur_rounded)
                                ],
                              ),
                              Expanded(
                                flex: 2,
                                child: GridView.builder(
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
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
                                        width: deviceWidth * 0.06,
                                        height: deviceHeight * 0.06,
                                      )),
                                    );
                                  },
                                ),
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
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: RichText(
                                      text: TextSpan(
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
                                  const Icon(Icons.work_history_rounded)
                                ],
                              ),
                              Expanded(
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
                                              Text(
                                                Experiences[index].role,
                                                style: GoogleFonts.jetBrainsMono(textStyle: textStyles.edu_H_B),
                                              ),
                                              Row(
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
                                              Row(
                                                children: [
                                                  Text(
                                                    Experiences[index].companyName,
                                                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_N),
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
                      ),
                      Expanded(
                        flex: 9,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 12),
                                    child: RichText(
                                      text: TextSpan(
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
                                  const Icon(Icons.school_rounded)
                                ],
                              ),
                              Expanded(
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
                                              Text(
                                                educations[index].institutionName,
                                                style: GoogleFonts.jetBrainsMono(textStyle: textStyles.edu_H_B),
                                              ),
                                              Row(
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
                                              educations[index].department != ''
                                                  ? Text(
                                                      educations[index].department,
                                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_N),
                                                    )
                                                  : const Offstage(),
                                              educations[index].grade != ''
                                                  ? Text(
                                                      educations[index].grade,
                                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_N),
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
