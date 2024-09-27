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
              Container(
                decoration: const BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: mobile_containerStyle.padding,
                margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                height: deviceHeight * mobile_containerStyle.height,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/profile.png',
                        fit: BoxFit.contain,
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //name
                          FittedBox(
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
                          //heading
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
                                    text: " at a Time",
                                    style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          //about
                          AutoSizeText(
                            minFontSize: 5,
                            maxFontSize: 12,
                            maxLines: 10,
                            style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1_mobile),
                            "Innovative computer engineer solving complex problems and delivering impactful solutions. Passionate about technology and continuous learning in software development.",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
