import 'package:Nakul_Dev/Data/profilepic.dart';
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
                  flex: 2,
                  child: Container(
                    decoration: const BoxDecoration(
                      // color: containerStyle.color,
                      borderRadius: containerStyle.borderRadius,
                    ),
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
                        Text(
                          "Let's know more about me",
                          style: GoogleFonts.jetBrainsMono(textStyle: textStyles.B),
                        )
                      ],
                    ),
                  ),
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
                            const Icon(Icons.format_align_justify_rounded),
                            Text(
                              "Current Read",
                              style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                            ),
                          ],
                        ),
                        Text(
                          "Can't Hurt Me • David Goggins",
                          style: GoogleFonts.jetBrainsMono(textStyle: textStyles.P1),
                        ),
                        Image.asset(
                          bookPic,
                          height: 300,
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.bottomCenter,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                    bottom: 200,
                    child: Container(
                      decoration: const BoxDecoration(
                        // border: Border.all(color: Colors.white),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(10, 37, 37, 37),
                            Color.fromARGB(65, 37, 37, 37),
                            Color.fromARGB(150, 37, 37, 37),
                            Color(0xFF252525)
                          ],
                          stops: [
                            0.25,
                            0.5,
                            0.75,
                            1
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: containerStyle.borderRadius,
                      ),
                      margin: containerStyle.margin,
                      width: deviceWidth * containerStyle.widthAboutme,
                      height: 60,
                      child: Text(
                        "My Coding Journey",
                        style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
                      ),
                    )),
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
                        // height: (deviceHeight * 0.2) - 16.1,
                        child: ScrollConfiguration(
                          behavior: const ScrollBehavior().copyWith(scrollbars: false),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                    children: [
                                      TextSpan(text: 'My coding journey kicked off back in ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: '10th grade', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ', during ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: '2018', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ', when I stumbled upon ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'HTML', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' and ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'CSS', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: '. With just those basics under my belt, I took a chance and entered a web design competition—and to my surprise, I snagged ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: '2nd place', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' at the district level! That victory was a spark. My dad noticed the fire in me and said, “This is your thing. You’ve got what it takes to do well in ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'computer science', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: '.” Those words stuck with me and set me on this path.', style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Story Section 2
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                    children: [
                                      TextSpan(text: 'Determined to explore more, I chose ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'computer science', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' in my higher secondary studies (+1 and +2). During these years, I not only picked up new programming skills but also competed again in the web design contest—and yes, ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'I earned 2nd place', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' once more! It felt amazing to see my work recognized, and with each project, I found myself more drawn to the world of ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'technology', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: '.', style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20), // Spacing between sections

                                // Story Section 3
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                    children: [
                                      TextSpan(text: 'After school, I dived even deeper by enrolling in a ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'diploma in computer technology', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: '. This phase of my journey was packed with hands-on learning. I developed a ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'bug tracking system', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' for a mini-project and built a ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'song recommendation system', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' for my final project—one that could analyze text to detect ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'emotions', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: '. I even gave a seminar on ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'Fuchsia OS', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ', which introduced me to the thrill of sharing knowledge and exploring cutting-edge tech. This was where I really began to understand the power of ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'software', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ', not just as code but as a way to create solutions and bring ideas to life.', style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20), // Spacing between sections

                                // Story Section 4
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                    children: [
                                      TextSpan(text: 'Fast forward to today: I’m in my ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: '3rd year', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' of ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'BE in Computer Science and Engineering', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ', and things have only gotten more exciting. One of the most fun challenges has been learning ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'Flutter', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' and using it to create cool projects, like this very portfolio website and an ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'Apple Music clone', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: '. I also did a ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: 'one-month internship', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: ' focused on app development, which gave me a taste of working in the real world and strengthened my skills even further.', style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20), // Spacing between sections

                                // Story Section 5
                                RichText(
                                  text: const TextSpan(
                                    style: TextStyle(fontSize: 16, height: 1.5, color: Colors.white),
                                    children: [
                                      TextSpan(text: 'Looking back, this journey has been full of small victories and big lessons, and I know there’s still a long way to go. Every time I tackle a new project, I feel that same spark from ', style: TextStyle(color: Colors.white)),
                                      TextSpan(text: '10th grade', style: TextStyle(fontWeight: FontWeight.bold)),
                                      TextSpan(text: '—only now, it burns brighter. And honestly, I can’t wait to see where the road takes me next.', style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    // border: Border.all(color: Colors.white),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(10, 37, 37, 37),
                        Color.fromARGB(65, 37, 37, 37),
                        Color.fromARGB(150, 37, 37, 37),
                        Color(0xFF252525)
                      ],
                      stops: [
                        0.25,
                        0.5,
                        0.75,
                        1
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: containerStyle.borderRadius,
                  ),
                  margin: containerStyle.margin,
                  width: deviceWidth * containerStyle.widthAboutme,
                  height: 60,
                )
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: containerStyle.borderRadius,
                  ),
                  margin: containerStyle.margin,
                  width: deviceWidth * containerStyle.widthAboutme,
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          borderRadius: containerStyle.borderRadius,
                        ),
                        width: deviceWidth * containerStyle.widthAboutme,
                        height: 250,
                        child: const ClipRRect(borderRadius: ContactMe_containerStyle_tablet.borderRadius, child: RandomLocationMap()),
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
                        Text(
                          "My Persona",
                          style: GoogleFonts.ibmPlexMono(textStyle: textStyles.HeadingB),
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