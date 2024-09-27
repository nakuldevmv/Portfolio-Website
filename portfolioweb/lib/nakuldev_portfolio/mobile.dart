import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/Data/education.dart';
import 'package:portfolioweb/Data/exp.dart';
import 'package:portfolioweb/Data/projects.dart';
import 'package:portfolioweb/Data/skill.dart';
import 'package:portfolioweb/error/notResp.dart';
import 'package:portfolioweb/functions/downloadResume.dart';
import 'package:portfolioweb/functions/navigate.dart';
import 'package:portfolioweb/functions/notifySnackBar.dart';
import 'package:portfolioweb/nakuldev_portfolio/pages/contact_me.dart';
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
    const rurl = 'https://github.com/nakuldevmv/Resume/blob/main/resume.pdf';

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
            //main column
            children: [
              //profile
              AspectRatio(
                aspectRatio: deviceHeight * (mobile_containerStyle.height * 3.1) / deviceWidth,
                child: Container(
                  decoration: const BoxDecoration(
                    color: mobile_containerStyle.color,
                    borderRadius: mobile_containerStyle.borderRadius,
                  ),
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                  ),
                  margin: mobile_containerStyle.margin,
                  width: deviceWidth * mobile_containerStyle.width,
                  height: deviceHeight * mobile_containerStyle.height,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/profile.png',
                          fit: BoxFit.fitHeight,
                          alignment: Alignment.bottomCenter,
                          // scale: 3.0, // scale the image by a factor of 2
                        ),
                      ),
                      SizedBox(
                        width: deviceWidth * 0.02,
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //name
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(text: "Nakul", style: GoogleFonts.ibmPlexMono(textStyle: textStyles.Name1, fontSize: 20)),
                                            TextSpan(text: "</Dev>", style: GoogleFonts.jetBrainsMono(textStyle: textStyles.Name2, fontSize: 20)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.verified_rounded,
                                      size: deviceWidth * mobile_containerStyle.iconSize,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: deviceHeight * 0.02,
                                ),
                                //heading
                                FittedBox(
                                  fit: BoxFit.contain,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Innovating the ",
                                          style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                                        ),
                                        TextSpan(
                                          text: "Future",
                                          style: GoogleFonts.ibmPlexMono(textStyle: textStyles.I),
                                        ),
                                        TextSpan(
                                          text: ",\nOne Line of ",
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

                            GestureDetector(
                              onTap: () {
                                downloadResume(rurl);
                                notifySnackBar(context, "Preparing my resume... it will download shortly.");
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 99, 99, 99),
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(bottom: 16),
                                width: deviceWidth * 0.25,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Icon(
                                          Icons.description,
                                          size: deviceWidth * mobile_containerStyle.iconSize,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          "Resume",
                                          style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B, fontSize: kDefaultFontSize),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // //about
                            // AutoSizeText(
                            //   minFontSize: 5,
                            //   maxFontSize: 12,
                            //   maxLines: 10,
                            //   style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1_mobile),
                            //   "Solving complex problems as an engineering student with a love for tech and learning.",
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //skilled in
              AspectRatio(
                aspectRatio: deviceHeight * (mobile_containerStyle.height * 3.4) / deviceWidth,
                child: Container(
                  decoration: const BoxDecoration(
                    color: mobile_containerStyle.color,
                    borderRadius: mobile_containerStyle.borderRadius,
                  ),
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                  margin: mobile_containerStyle.margin,
                  width: deviceWidth * mobile_containerStyle.width,
                  // height: deviceHeight * (mobile_containerStyle.height * .9),
                  child: Column(
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
                            Icons.lens_blur_rounded,
                            size: deviceWidth * mobile_containerStyle.iconSize,
                          )
                        ],
                      ),
                      SizedBox(
                        height: deviceHeight * 0.015,
                      ),
                      Expanded(
                        flex: 3,
                        child: SingleChildScrollView(
                          physics: const NeverScrollableScrollPhysics(),
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6,
                              crossAxisSpacing: 3,
                              mainAxisSpacing: 3,
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
                                    width: deviceWidth * 0.045,
                                    height: deviceHeight * 0.045,
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
              //my projects
              AspectRatio(
                aspectRatio: deviceHeight * (mobile_containerStyle.height * 2.85) / deviceWidth,
                child: Container(
                  decoration: const BoxDecoration(
                    color: mobile_containerStyle.color,
                    borderRadius: mobile_containerStyle.borderRadius,
                  ),
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                  margin: mobile_containerStyle.margin,
                  width: deviceWidth * mobile_containerStyle.width,
                  height: deviceHeight * (mobile_containerStyle.height * 1.03),
                  child: Column(
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(
                              Icons.arrow_outward_rounded,
                              size: deviceWidth * mobile_containerStyle.iconSize,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: deviceHeight * 0.015,
                      ),
                      AspectRatio(
                        aspectRatio: deviceHeight * (mobile_containerStyle.height * 4.2) / deviceWidth,
                        child: SizedBox(
                          height: deviceHeight * mobile_ProjectContainer.height,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: projects.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  navigateTo(context, myProject(initialIndex: index));
                                },
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: EducationcontainerStyle.color,
                                    borderRadius: mobile_ProjectContainer.borderRadius,
                                  ),
                                  // height: deviceHeight * mobile_ProjectContainer.height,
                                  width: deviceWidth * mobile_ProjectContainer.width,
                                  padding: mobile_ProjectContainer.padding,
                                  margin: mobile_ProjectContainer.margin,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.arrow_right_rounded, size: deviceWidth * 0.08),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            projects[index].icon,
                                            size: deviceWidth * 0.1,
                                          ),
                                          SizedBox(
                                            height: deviceHeight * 0.01,
                                          ),
                                          SizedBox(
                                            height: deviceHeight * 0.05,
                                            child: AutoSizeText(
                                              minFontSize: 1,
                                              maxFontSize: 15,
                                              maxLines: 2,
                                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B),
                                              // overflow: TextOverflow.ellipsis,
                                              projects[index].title,
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //My Edu
              AspectRatio(
                ///75
                aspectRatio: deviceHeight * (mobile_containerStyle.height * 2.645) / deviceWidth,
                child: Container(
                  decoration: const BoxDecoration(
                    color: mobile_containerStyle.color,
                    borderRadius: mobile_containerStyle.borderRadius,
                  ),
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                  margin: mobile_containerStyle.margin,
                  width: deviceWidth * mobile_containerStyle.width,
                  height: deviceHeight * (mobile_containerStyle.height * 1.03),
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Icon(
                            Icons.school_rounded,
                            size: deviceWidth * mobile_containerStyle.iconSize,
                          )
                        ],
                      ),
                      SizedBox(
                        height: deviceHeight * 0.015,
                      ),
                      AspectRatio(
                        ///
                        aspectRatio: deviceHeight * (mobile_containerStyle.height * 3.7) / deviceWidth,
                        child: SizedBox(
                          height: deviceHeight * mobile_ProjectContainer.height,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: educations.length,
                            itemBuilder: (context, index) {
                              return TimelineTile(
                                axis: TimelineAxis.horizontal,
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
                                  iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_drop_down_rounded),
                                ),
                                alignment: TimelineAlign.start,
                                endChild: Expanded(
                                  flex: 5,
                                  child: AspectRatio(
                                    aspectRatio: deviceHeight * (mobile_ProjectContainer.height * 15) / deviceWidth * (mobile_ProjectContainer.width * .9),
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
              //my exp
              AspectRatio(
                ///75
                aspectRatio: deviceHeight * (mobile_containerStyle.height * 2.645) / deviceWidth,
                child: Container(
                  decoration: const BoxDecoration(
                    color: mobile_containerStyle.color,
                    borderRadius: mobile_containerStyle.borderRadius,
                  ),
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
                  margin: mobile_containerStyle.margin,
                  width: deviceWidth * mobile_containerStyle.width,
                  height: deviceHeight * (mobile_containerStyle.height * 1.03),
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
                            size: deviceWidth * mobile_containerStyle.iconSize,
                          )
                        ],
                      ),
                      SizedBox(
                        height: deviceHeight * 0.015,
                      ),
                      AspectRatio(
                        ///
                        aspectRatio: deviceHeight * (mobile_containerStyle.height * 3.7) / deviceWidth,
                        child: SizedBox(
                          height: deviceHeight * mobile_ProjectContainer.height,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Experiences.length,
                            itemBuilder: (context, index) {
                              return TimelineTile(
                                axis: TimelineAxis.horizontal,
                                // isFirst: Experiences[index].start,
                                isFirst: true,
                                // isLast: Experiences[index].end,
                                isLast: false,
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
                                  iconStyle: IconStyle(color: Colors.white, fontSize: 25, iconData: Icons.arrow_drop_down_rounded),
                                ),
                                alignment: TimelineAlign.start,
                                endChild: Expanded(
                                  // flex: 5,
                                  child: AspectRatio(
                                    aspectRatio: deviceHeight * (mobile_ProjectContainer.height * 15) / deviceWidth * (mobile_ProjectContainer.width * .9),
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
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              Experiences[index].companyName,
                                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_N),
                                            ),
                                          )
                                        ],
                                      ),
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
              //contact me
              AspectRatio(
                aspectRatio: deviceHeight * (mobile_containerStyle.height * 6) / deviceWidth,
                child: GestureDetector(
                  onTap: () {
                    navigateTo(context, const ContactMe());
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: containerStyle.color,
                      borderRadius: containerStyle.borderRadius,
                    ),
                    padding: mobile_containerStyle.padding,
                    margin: mobile_containerStyle.margin,
                    width: deviceWidth * mobile_containerStyle.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AutoSizeText(
                                "Have some Questions?",
                                maxLines: 3,
                                maxFontSize: 15,
                                minFontSize: 10,
                                style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                              ),
                            ),
                            Icon(
                              Icons.arrow_outward_rounded,
                              size: deviceWidth * mobile_containerStyle.iconSize,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: deviceHeight * 0.015,
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

              SizedBox(
                height: deviceHeight * 0.015,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
