import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolioweb/functions/launch_url.dart';
import 'package:portfolioweb/styles/styles.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

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
            child: Container(
              // decoration: const BoxDecoration(
              //   color: ContactMe_containerStyle.main_color,
              //   borderRadius: ContactMe_containerStyle.borderRadius,
              // ),
              padding: ContactMe_containerStyle.padding,
              margin: ContactMe_containerStyle.margin,
              width: deviceWidth * ContactMe_containerStyle.main_width,
              height: deviceHeight * ContactMe_containerStyle.main_height,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Contact ',
                            style: GoogleFonts.ibmPlexMono(textStyle: textStyles.B),
                          ),
                          TextSpan(
                            text: 'Me',
                            style: GoogleFonts.jetBrainsMono(textStyle: textStyles.I),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            //email
                            Container(
                                decoration: const BoxDecoration(
                                  color: ContactMe_containerStyle.color,
                                  borderRadius: ContactMe_containerStyle.borderRadius,
                                ),
                                padding: ContactMe_containerStyle.padding,
                                margin: ContactMe_containerStyle.margin,
                                width: deviceWidth * ContactMe_containerStyle.width_mail_Linkedin,
                                child: Row(
                                  children: [
                                    const Icon(Icons.mail_rounded),
                                    SizedBox(
                                      width: deviceWidth * 0.005,
                                    ),
                                    SelectableText(
                                      'nakuldev1561@gmail.com',
                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B),
                                    ),
                                  ],
                                )),
                            //linkedin
                            GestureDetector(
                              onTap: () {
                                urlLaunch("https://www.linkedin.com/in/nakuldevmv/");
                              },
                              child: Container(
                                decoration: const BoxDecoration(
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
                                    Text(
                                      'LinkedIn',
                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B),
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
                                    urlLaunch("https://www.instagram.com/jo.cly.n/");
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: ContactMe_containerStyle.color,
                                      borderRadius: ContactMe_containerStyle.borderRadius,
                                    ),
                                    padding: ContactMe_containerStyle.padding,
                                    margin: ContactMe_containerStyle.margin,
                                    width: deviceWidth * ContactMe_containerStyle.bottom_icon_width,
                                    child: SvgPicture.asset(
                                      "assets/svg/instagram.svg",
                                      // ignore: deprecated_member_use
                                      color: textStyles.B.color,
                                    ),
                                  ),
                                ),
                                //twitter
                                GestureDetector(
                                  onTap: () {
                                    urlLaunch("https://x.com/");
                                  },
                                  child: Container(
                                    decoration: const BoxDecoration(
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
                                urlLaunch("https://github.com/nakuldevmv");
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: ContactMe_containerStyle.color,
                                  borderRadius: ContactMe_containerStyle.borderRadius,
                                ),
                                padding: ContactMe_containerStyle.padding,
                                margin: ContactMe_containerStyle.margin,
                                width: deviceWidth * ContactMe_containerStyle.githubsizeW,
                                height: deviceHeight * ContactMe_containerStyle.githubsizeH,
                                child: SvgPicture.asset(
                                  "assets/svg/github.svg",
                                  // ignore: deprecated_member_use
                                  color: textStyles.B.color,
                                  // width: deviceWidth * 0.06,
                                  // height: deviceHeight * 0.06,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                urlLaunch("https://www.hackerrank.com/profile/nakuldev1561");
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: ContactMe_containerStyle.color,
                                  borderRadius: ContactMe_containerStyle.borderRadius,
                                ),
                                padding: ContactMe_containerStyle.padding,
                                margin: ContactMe_containerStyle.margin,
                                width: deviceWidth * ContactMe_containerStyle.bottom_icon_width,
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
                        Stack(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: ContactMe_containerStyle.color,
                                borderRadius: ContactMe_containerStyle.borderRadius,
                                image: DecorationImage(
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
                                    const Icon(Icons.place_rounded),
                                    Text(
                                      ' Kerala, India',
                                      style: GoogleFonts.ibmPlexMono(textStyle: textStyles.edu_P_N, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            // Positioned(
                            //   bottom: 85,
                            //   left: 153,
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(100),
                            //       gradient: const LinearGradient(
                            //         colors: [
                            //           Color.fromARGB(116, 71, 119, 230),
                            //           Color.fromARGB(130, 141, 84, 233)
                            //         ],
                            //         stops: [
                            //           0,
                            //           1
                            //         ],
                            //         begin: Alignment.topLeft,
                            //         end: Alignment.bottomRight,
                            //       ),
                            //     ),
                            //     height: 120,
                            //     width: 120,
                            //   ),
                            // ),
                            // Positioned(
                            //   bottom: 85,
                            //   left: 153,
                            //   child: Container(
                            //     decoration: BoxDecoration(
                            //       borderRadius: BorderRadius.circular(100),
                            //       gradient: const LinearGradient(
                            //         colors: [
                            //           Color.fromARGB(239, 71, 119, 230),
                            //           Color.fromARGB(239, 141, 84, 233)
                            //         ],
                            //         stops: [
                            //           0,
                            //           1
                            //         ],
                            //         begin: Alignment.topLeft,
                            //         end: Alignment.bottomRight,
                            //       ),
                            //     ),
                            //     height: 80,
                            //     width: 80,
                            //   ),
                            // ),
                            // Positioned(
                            //   bottom: 70,
                            //   left: 140,
                            //   child: Image.asset(
                            //     'assets/i.png',
                            //     width: 100,
                            //     height: 100,
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
      ),
    );
  }
}
