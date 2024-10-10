     child: Padding(
          padding = const EdgeInsets.all(16),
          child = Center(
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
                    Column(
                      children: [

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
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Icon(Icons.mail_rounded),
                                        SizedBox(
                                          width: deviceWidth * 0.005,
                                        ),
                                        GestureDetector(
                                          onHorizontalDragUpdate: (details) {
                                            copyTextToClipboard(context, 'nakuldev1561@gmail.com');
                                          },
                                          onTap: () {
                                            openEmail();
                                          },
                                          child: SizedBox(
                                            width: deviceWidth * 0.13,
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                "nakuldev1561@gmail.com",
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
                                            style: GoogleFonts.ibmPlexMono(textStyle: textStyles.P2B),
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
                                //hackerrank
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
   