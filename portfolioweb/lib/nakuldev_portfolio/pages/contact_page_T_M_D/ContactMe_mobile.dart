import 'dart:async';

import 'package:Nakul_Dev/functions/copy_text.dart';
import 'package:Nakul_Dev/functions/launch_url.dart';
import 'package:Nakul_Dev/functions/mailing_fun.dart';
import 'package:Nakul_Dev/styles/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMe_mobile extends StatefulWidget {
  const ContactMe_mobile({super.key});

  @override
  State<ContactMe_mobile> createState() => _ContactMe_mobileState();
}

class _ContactMe_mobileState extends State<ContactMe_mobile> {
  bool isTick = true;

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  urlLaunch("https://maps.app.goo.gl/wXXKmaZZ4ZAK2Zwk8");
                },
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: ContactMe_containerStyle_mobile.color,
                        borderRadius: ContactMe_containerStyle_mobile.borderRadius,
                        image: DecorationImage(
                          image: AssetImage('assets/locD.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      padding: ContactMe_containerStyle_mobile.padding,
                      margin: ContactMe_containerStyle_mobile.margin,
                      width: deviceWidth * ContactMe_containerStyle_mobile.loc_width,
                      height: 250,
                      // height: deviceHeight * ContactMe_containerStyle_mobile.loc_height,
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(130, 167, 167, 167),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.place_rounded),
                            Text(
                              ' Kerala, India',
                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_N, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //email
                      Container(
                          decoration: const BoxDecoration(
                            color: ContactMe_containerStyle_mobile.color,
                            borderRadius: ContactMe_containerStyle_mobile.borderRadius,
                          ),
                          padding: ContactMe_containerStyle_mobile.padding,
                          margin: ContactMe_containerStyle_mobile.margin,
                          width: deviceWidth * ContactMe_containerStyle_mobile.width_mail_Linkedin,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Icon(Icons.mail_rounded),
                              // SizedBox(
                              //   width: deviceWidth * 0.005,
                              // ),
                              GestureDetector(
                                onHorizontalDragUpdate: (details) {
                                  copyTextToClipboard(context, 'nakuldev1561@gmail.com');
                                },
                                onTap: () {
                                  openEmail();
                                },
                                child: SizedBox(
                                  width: deviceWidth * 0.36,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      " nakuldev1561@gmail.com",
                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B),
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isTick = !isTick;
                                  });
                                  //
                                  copyTextToClipboard(context, 'nakuldev1561@gmail.com');
                                  //
                                  Timer(const Duration(seconds: 2, milliseconds: 500), () {
                                    setState(() {
                                      isTick = !isTick;
                                    });
                                  });
                                },
                                child: AnimatedCrossFade(
                                  firstChild: const Icon(Icons.copy),
                                  secondChild: const Icon(Icons.check),
                                  crossFadeState: isTick ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                                  duration: const Duration(milliseconds: 150),
                                ),
                              )
                            ],
                          )),

                      //linkedin
                      GestureDetector(
                        onTap: () {
                          urlLaunch("https://www.linkedin.com/in/nakuldevmv/");
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: ContactMe_containerStyle_mobile.color,
                            borderRadius: ContactMe_containerStyle_mobile.borderRadius,
                          ),
                          padding: ContactMe_containerStyle_mobile.padding,
                          margin: ContactMe_containerStyle_mobile.margin,
                          width: deviceWidth * ContactMe_containerStyle_mobile.width_mail_Linkedin,
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/svg/linkedin.svg",
                                // ignore: deprecated_member_use
                                color: textStyles.B.color,
                              ),
                              SizedBox(
                                width: deviceWidth * 0.005,
                              ),
                              Expanded(
                                child: AutoSizeText(
                                  ' LinkdIn',
                                  minFontSize: 10,
                                  maxFontSize: 15,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //insta
                          GestureDetector(
                            onTap: () {
                              urlLaunch("https://www.instagram.com/jo.cly.n/");
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: ContactMe_containerStyle_mobile.color,
                                borderRadius: ContactMe_containerStyle_mobile.borderRadius,
                              ),
                              padding: ContactMe_containerStyle_mobile.padding,
                              margin: ContactMe_containerStyle_mobile.margin,
                              width: deviceWidth * ContactMe_containerStyle_mobile.bottom_icon_width,
                              child: SvgPicture.asset(
                                "assets/svg/instagram.svg",
                                color: textStyles.B.color,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          //twitter
                          GestureDetector(
                            onTap: () {
                              urlLaunch("https://x.com/");
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: ContactMe_containerStyle_mobile.color,
                                borderRadius: ContactMe_containerStyle_mobile.borderRadius,
                              ),
                              padding: ContactMe_containerStyle_mobile.padding,
                              margin: ContactMe_containerStyle_mobile.margin,
                              width: deviceWidth * ContactMe_containerStyle_mobile.bottom_icon_width,
                              child: SvgPicture.asset(
                                "assets/svg/x.svg",
                                // ignore: deprecated_member_use
                                color: textStyles.B.color,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //github
                      GestureDetector(
                        onTap: () {
                          urlLaunch("https://github.com/nakuldevmv");
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: ContactMe_containerStyle_mobile.color,
                            borderRadius: ContactMe_containerStyle_mobile.borderRadius,
                          ),
                          padding: ContactMe_containerStyle_mobile.padding,
                          margin: ContactMe_containerStyle_mobile.margin,
                          width: deviceWidth * ContactMe_containerStyle_mobile.githubsizeW,
                          height: 122,
                          // height: deviceHeight * ContactMe_containerStyle_mobile.githubsizeH,
                          child: SvgPicture.asset(
                            "assets/svg/github.svg",
                            // ignore: deprecated_member_use
                            color: textStyles.B.color,
                            // width: deviceWidth * 0.06,
                            // height: deviceHeight * 0.06,
                          ),
                        ),
                      ),
                      //hackerrank
                      GestureDetector(
                        onTap: () {
                          urlLaunch("https://www.hackerrank.com/profile/nakuldev1561");
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            color: ContactMe_containerStyle_mobile.color,
                            borderRadius: ContactMe_containerStyle_mobile.borderRadius,
                          ),
                          padding: ContactMe_containerStyle_mobile.padding,
                          margin: ContactMe_containerStyle_mobile.margin,
                          width: deviceWidth * ContactMe_containerStyle_mobile.githubsizeW,
                          child: SvgPicture.asset(
                            "assets/svg/hackerrank.svg",
                            // ignore: deprecated_member_use
                            color: textStyles.B.color,
                            // width: deviceWidth * 0.06,
                            // height: deviceHeight * 0.06,
                          ),
                        ),
                      ),
                    ],
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
