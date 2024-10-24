import 'package:Nakul_Dev/Data/profilePic_book.dart';
import 'package:Nakul_Dev/functions/Custom_backdrop_filter.dart';
import 'package:Nakul_Dev/functions/GoogleMap_Integration.dart';
import 'package:Nakul_Dev/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMeMobile extends StatefulWidget {
  const AboutMeMobile({super.key});

  @override
  State<AboutMeMobile> createState() => _AboutMeMobileState();
}

class _AboutMeMobileState extends State<AboutMeMobile> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    // double deviceWidth = isdeviceWidth < 1315 ? (MediaQuery.of(context).size.width + 194) : 1536;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Container(
              padding: containerStyle.padding,
              margin: containerStyle.margin,
              width: deviceWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BEYOND PORTFOLIO",
                    style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Let's know more about me",
                    style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: containerStyle.color,
                gradient: RadialGradient(
                  colors: [
                    const Color.fromARGB(255, 79, 79, 79),
                    containerStyle.color
                  ],
                  center: Alignment.bottomCenter,
                ),
                borderRadius: containerStyle.borderRadius,
              ),
              padding: containerStyle.paddingNew,
              margin: containerStyle.margin,
              width: deviceWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(color: textStyles.B.color, Icons.flare_rounded),
                          Text(
                            " Current Read",
                            style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Can't Hurt Me • David Goggins",
                        style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15), // Shadow color
                          spreadRadius: 1, // Spread radius
                          blurRadius: 5, // Blur radius
                          offset: const Offset(0, 3), // Offset in the x and y direction
                        ),
                      ],
                    ),
                    child: Image.asset(
                      bookPic,
                      height: 250,
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.bottomCenter,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Container(
                  margin: containerStyle.margin,
                  width: deviceWidth,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: containerStyle.borderRadius,
                    child: const RandomLocationMap(),
                  ),
                ),
                Padding(
                  padding: containerStyle.margin,
                  child: Container(
                    width: (deviceWidth / 2.5) + 10,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(130, 167, 167, 167),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    margin: containerStyle.margin,
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                    child: Row(
                      children: [
                        const Icon(color: Colors.red, Icons.place_rounded),
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
            Container(
              decoration: BoxDecoration(
                color: containerStyle.color,
                borderRadius: containerStyle.borderRadius,
              ),
              // padding: containerStyle.padding,
              margin: containerStyle.margin,
              width: deviceWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: containerStyle.paddingNewHeading,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(color: textStyles.B.color, Icons.flare_rounded),
                            Text(
                              " My Persona",
                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Know me as a person",
                          style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    // color: Colors.amber,
                    height: 255,
                    width: 380,
                    child: Center(
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Positioned(
                            bottom: 100,
                            left: 200, // Adjusted left position
                            child: rotating_container(
                              width: 169, // Adjusted width
                              color: Color(0xFF4A90E2), // Tomato
                              rotationZ: -4,
                              text: "Curious Mind",
                              emoji: "assets/emoji/Magnifier.png", // Magnifying Glass
                            ),
                          ),
                          Positioned(
                            bottom: 60,
                            left: 5, // Adjusted left position
                            child: rotating_container(
                              width: 135, // Adjusted width
                              color: Color(0xFFD4AC4B), // Sky Blue
                              rotationZ: -15,
                              text: "Bookworm",
                              emoji: "assets/emoji/Book.png", // Books
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 60, // Adjusted left position
                            child: rotating_container(
                              width: 135, // Adjusted width
                              color: Color(0xFF27AE60), // Dark Orange
                              rotationZ: 2,
                              text: "Traveler",
                              emoji: "assets/emoji/Airplane.png", // Airplane
                            ),
                          ),
                          Positioned(
                            bottom: 160,
                            left: 180, // Adjusted left position
                            child: rotating_container(
                              width: 130, // Adjusted width
                              color: Color(0xFFC0392B), // Lawn Green
                              rotationZ: 12,
                              text: "Gym Rat",
                              emoji: "assets/emoji/Gym.png", // Weightlifter
                            ),
                          ),
                          Positioned(
                            bottom: 120,
                            left: 10, // Adjusted left position
                            child: rotating_container(
                              width: 190, // Adjusted width
                              color: Color(0xFFF39C12), // Medium Purple
                              rotationZ: -4,
                              text: "Problem Solver",
                              emoji: "assets/emoji/Brain.png", // Circle
                            ),
                          ),
                          Positioned(
                            bottom: 35,
                            left: 150, // Adjusted left position
                            child: rotating_container(
                              width: 215, // Adjusted width
                              color: Color(0xFF8E44AD), // Medium Purple
                              rotationZ: 18,
                              text: "Friendly Ambivert",
                              emoji: "assets/emoji/Moon.png", // Circle
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: containerStyle.color,
                      borderRadius: containerStyle.borderRadius,
                    ),
                    padding: containerStyle.paddingNew,
                    margin: containerStyle.margin,
                    width: deviceWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Story Section 1
                        Column(
                          children: [
                            const SizedBox(height: 40),

                            RichText(
                              text: TextSpan(
                                style: const TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                children: [
                                  TextSpan(text: 'My coding journey kicked off back in ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: '10th grade', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ', during ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: '2018', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ', when I stumbled upon ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'HTML', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ' and ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'CSS', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: '. With just those basics under my belt, I took a chance and entered a web design competition—and to my surprise, I snagged ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: '2nd place', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ' at the district level! That victory was a spark. My dad noticed the fire in me and said, “This is your thing. You’ve got what it takes to do well in ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'computer science', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: '.” Those words stuck with me and set me on this path.', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),

                            // Story Section 2
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                children: [
                                  TextSpan(text: 'Determined to explore more, I chose ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'computer science', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ' in my higher secondary studies (+1 and +2). During these years, I not only picked up new programming skills but also competed again in the web design contest—and yes, ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'I earned 2nd place', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ' once more! It felt amazing to see my work recognized, and with each project, I found myself more drawn to the world of ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'technology', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: '.', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20), // Spacing between sections

                            // Story Section 3
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                children: [
                                  TextSpan(text: 'After school, I dived even deeper by enrolling in a ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'diploma in computer technology', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: '. This phase of my journey was packed with hands-on learning. I developed a ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'bug tracking system', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ' for a mini-project and built a ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'song recommendation system', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ' for my final project—one that could analyze text to detect ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'emotions', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: '. I even gave a seminar on ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'Fuchsia OS', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ', which introduced me to the thrill of sharing knowledge and exploring cutting-edge tech. This was where I really began to understand the power of ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'software', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ', not just as code but as a way to create solutions and bring ideas to life.', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20), // Spacing between sections

                            // Story Section 4
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                children: [
                                  TextSpan(text: 'Fast forward to today: I’m in my ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: '3rd year', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ' of ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'BE in Computer Science and Engineering', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ', and things have only gotten more exciting. One of the most fun challenges has been learning ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'Flutter', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ' and using it to create cool projects, like this very portfolio website and an ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'Apple Music clone', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: '. I also did a ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: 'one-month internship', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: ' focused on app development, which gave me a taste of working in the real world and strengthened my skills even further.', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20), // Spacing between sections

                            // Story Section 5
                            RichText(
                              text: TextSpan(
                                style: const TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                children: [
                                  TextSpan(text: 'Looking back, this journey has been full of small victories and big lessons, and I know there’s still a long way to go. Every time I tackle a new project, I feel that same spark from ', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                  TextSpan(text: '10th grade', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize, fontWeight: FontWeight.bold, color: Colors.blueGrey)),
                                  TextSpan(text: '—only now, it burns brighter. And honestly, I can’t wait to see where the road takes me next.', style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1, fontSize: kDefaultFontSize)),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20), // Spacing between sections
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: CustomBox(
                      borderRadius: containerStyle.borderRadiusRadup,
                      margin: containerStyle.margin,
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(31, 0, 0, 0),
                          borderRadius: containerStyle.borderRadius,
                        ),
                        padding: containerStyle.paddingNew,
                        // margin: containerStyle.margin,
                        width: deviceWidth,
                        height: 60,
                        child: Text(
                          "My Coding Journey",
                          style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
