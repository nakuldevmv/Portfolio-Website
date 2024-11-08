import 'dart:async';

import 'package:Nakul_Dev/functions/copy_text.dart';
import 'package:Nakul_Dev/functions/launch_url.dart';
import 'package:Nakul_Dev/functions/mailing_fun.dart';
import 'package:Nakul_Dev/styles/styles.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({super.key});

  @override
  State<ContactMe> createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  bool isTick = true;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/background_image.jpg'),
          fit: BoxFit.fitHeight,
          //change all to fitHeight
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Container(
            padding: ContactMe_containerStyle.padding,
            margin: ContactMe_containerStyle.margin,
            width: deviceWidth * ContactMe_containerStyle.main_width,
            height: deviceHeight * ContactMe_containerStyle.main_height,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          urlLaunch("https://maps.app.goo.gl/MtXyBejdS8JmWVRk9");
                        },
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: ContactMe_containerStyle.color,
                                borderRadius: ContactMe_containerStyle.borderRadius,
                                image: const DecorationImage(
                                  image: AssetImage('assets/locD.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              padding: ContactMe_containerStyle.padding,
                              margin: ContactMe_containerStyle.margin,
                              width: deviceWidth * ContactMe_containerStyle.loc_width,
                              height: deviceHeight * ContactMe_containerStyle.loc_height,
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
                                    Icon(color: textStyles.B.color, Icons.place_rounded),
                                    Text(
                                      ' HaNoi, VietNam',
                                      style: GoogleFonts.chakraPetch(textStyle: textStyles.edu_P_N, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          //email
                          Container(
                              decoration: BoxDecoration(
                                color: ContactMe_containerStyle.color,
                                borderRadius: ContactMe_containerStyle.borderRadius,
                              ),
                              padding: ContactMe_containerStyle.padding,
                              margin: ContactMe_containerStyle.margin,
                              width: deviceWidth * ContactMe_containerStyle.width_mail_Linkedin,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(color: textStyles.B.color, Icons.mail_rounded),
                                  SizedBox(
                                    width: deviceWidth * 0.005,
                                  ),
                                  GestureDetector(
                                    onHorizontalDragUpdate: (details) {
                                      copyTextToClipboard(context, 'chiennq.dev@gmail.com');
                                    },
                                    onTap: () {
                                      openEmail();
                                    },
                                    child: SizedBox(
                                      width: deviceWidth * 0.13,
                                      child: FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          "chiennq.dev@gmail.com",
                                          style: GoogleFonts.chakraPetch(textStyle: textStyles.P2B),
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
                                      copyTextToClipboard(context, 'chiennq.dev@gmail.com');
                                      //
                                      Timer(const Duration(seconds: 2, milliseconds: 500), () {
                                        setState(() {
                                          isTick = !isTick;
                                        });
                                      });
                                    },
                                    child: AnimatedCrossFade(
                                      firstChild: Icon(color: textStyles.B.color, Icons.copy),
                                      secondChild: Icon(color: textStyles.B.color, Icons.check),
                                      crossFadeState: isTick ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                                      duration: const Duration(milliseconds: 150),
                                    ),
                                  )
                                ],
                              )),

                          //linkedin
                          GestureDetector(
                            onTap: () {
                              urlLaunch("https://www.linkedin.com/in/#/");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: ContactMe_containerStyle.color,
                                borderRadius: ContactMe_containerStyle.borderRadius,
                              ),
                              padding: ContactMe_containerStyle.padding,
                              margin: ContactMe_containerStyle.margin,
                              width: deviceWidth * ContactMe_containerStyle.width_mail_Linkedin,
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
                                      'LinkdIn',
                                      minFontSize: 10,
                                      maxFontSize: 15,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.chakraPetch(textStyle: textStyles.P2B),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              //insta
                              GestureDetector(
                                onTap: () {
                                  urlLaunch("https://www.instagram.com/#/");
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ContactMe_containerStyle.color,
                                    borderRadius: ContactMe_containerStyle.borderRadius,
                                  ),
                                  padding: ContactMe_containerStyle.padding,
                                  margin: ContactMe_containerStyle.margin,
                                  width: deviceWidth * ContactMe_containerStyle.bottom_icon_width,
                                  child: SvgPicture.asset(
                                    "assets/svg/instagram.svg",
                                    color: textStyles.B.color,
                                  ),
                                ),
                              ),
                              //twitter
                              GestureDetector(
                                onTap: () {
                                  urlLaunch("https://leetcode.com/u/#/");
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: ContactMe_containerStyle.color,
                                    borderRadius: ContactMe_containerStyle.borderRadius,
                                  ),
                                  padding: ContactMe_containerStyle.padding,
                                  margin: ContactMe_containerStyle.margin,
                                  width: deviceWidth * ContactMe_containerStyle.bottom_icon_width,
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
                      Column(
                        children: [
                          //github
                          GestureDetector(
                            onTap: () {
                              urlLaunch("https://m.me/100011524450031");
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: ContactMe_containerStyle.color,
                                borderRadius: ContactMe_containerStyle.borderRadius,
                              ),
                              padding: ContactMe_containerStyle.padding,
                              margin: ContactMe_containerStyle.margin,
                              width: deviceWidth * ContactMe_containerStyle.githubsizeW,
                              height: deviceHeight * ContactMe_containerStyle.githubsizeH,
                              child: SvgPicture.asset(
                                "assets/svg/facebook-messenger.svg",
                                // ignore: deprecated_member_use
                                color: textStyles.B.color,
                                // width: deviceWidth * 0.06,
                                // height: deviceHeight * 0.06,
                              ),
                            ),
                          ),
                          // GestureDetector(
                          //   onTap: () {
                          //     urlLaunch("https://www.hackerrank.com/profile/chiennq.dev");
                          //   },
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //       color: ContactMe_containerStyle.color,
                          //       borderRadius: ContactMe_containerStyle.borderRadius,
                          //     ),
                          //     padding: ContactMe_containerStyle.padding,
                          //     margin: ContactMe_containerStyle.margin,
                          //     width: deviceWidth * ContactMe_containerStyle.bottom_icon_width,
                          //     child: SvgPicture.asset(
                          //       "assets/svg/hackerrank.svg",
                          //       // ignore: deprecated_member_use
                          //       color: textStyles.B.color,
                          //       // width: deviceWidth * 0.06,
                          //       // height: deviceHeight * 0.06,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
