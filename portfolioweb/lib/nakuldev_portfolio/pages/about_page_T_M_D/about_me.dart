import 'package:Nakul_Dev/Data/profilePic_book.dart';
import 'package:Nakul_Dev/error/notResp.dart';
import 'package:Nakul_Dev/functions/GoogleMap_Integration.dart';
import 'package:Nakul_Dev/functions/launch_url.dart';
import 'package:Nakul_Dev/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    double isdeviceWidth = MediaQuery.of(context).size.width;
    // double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = isdeviceWidth < 1315 ? (MediaQuery.of(context).size.width + 194) : 1536;
    double deviceHeight = 729.5;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, bottom: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: containerStyle.padding,
                    margin: containerStyle.margin,
                    width: deviceWidth * containerStyle.widthAboutme,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Beyond Portfolio",
                          style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
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
                    width: deviceWidth * containerStyle.widthAboutme,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.flare_rounded),
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Image.asset(
                              bookPic,
                              height: 200,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.bottomCenter,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: containerStyle.color,
                    borderRadius: containerStyle.borderRadius,
                  ),
                  padding: containerStyle.paddingNew,
                  margin: containerStyle.margin,
                  width: deviceWidth * containerStyle.widthAboutme,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Story Section 1
                      Expanded(
                        child: ScrollConfiguration(
                          behavior: const ScrollBehavior().copyWith(scrollbars: false),
                          child: SingleChildScrollView(
                            child: Column(
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
                                const SizedBox(height: 50),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(100, 37, 37, 37),
                            Color.fromARGB(245, 37, 37, 37),
                            Color.fromARGB(250, 37, 37, 37),
                            Color.fromARGB(255, 37, 37, 37)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        borderRadius: containerStyle.borderRadius,
                      ),
                      padding: containerStyle.paddingNew,
                      margin: containerStyle.margin,
                      width: deviceWidth * containerStyle.widthAboutme,
                      height: 60,
                      child: Text(
                        "My Coding Journey",
                        style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(90, 37, 37, 37),
                            Color.fromARGB(240, 37, 37, 37),
                            Color.fromARGB(255, 37, 37, 37)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: containerStyle.borderRadius,
                      ),
                      margin: containerStyle.margin,
                      width: deviceWidth * containerStyle.widthAboutme,
                      height: 60,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      margin: containerStyle.margin,
                      width: deviceWidth * containerStyle.widthAboutme,
                      height: 250,
                      child: const ClipRRect(
                        borderRadius: containerStyle.borderRadius,
                        child: RandomLocationMap(),
                      ),
                    ),
                    Padding(
                      padding: containerStyle.margin,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(130, 167, 167, 167),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        margin: containerStyle.margin,
                        padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.location_on),
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
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: containerStyle.color,
                      borderRadius: containerStyle.borderRadius,
                    ),
                    padding: containerStyle.padding,
                    margin: containerStyle.margin,
                    width: deviceWidth * containerStyle.widthAboutme,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.flare_rounded),
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
                        // Image.asset(bookPic)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
