import 'package:Nakul_Dev/functions/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class notResp extends StatelessWidget {
  const notResp({super.key});

  @override
  Widget build(BuildContext context) {
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Container(
                height: 150,
                width: 350,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(120, 0, 0, 0),
                  border: Border.all(color: const Color.fromARGB(136, 96, 125, 139), width: 2.0),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "The website is temporarily unavailable.",
                      // "Warning: This webpage is not optimized for mobile devices. Please view in full screen for a better experience.",
                      // "Note: This website is currently under development for responsiveness. For the best experience, please view on a mobile device or in full-screen mode on desktop.",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "Contact Me On ",
                          // "Warning: This webpage is not optimized for mobile devices. Please view in full screen for a better experience.",
                          // "Note: This website is currently under development for responsiveness. For the best experience, please view on a mobile device or in full-screen mode on desktop.",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            urlLaunch("https://www.linkedin.com/in/nakuldevmv/");
                          },
                          child: Container(
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                color: Color.fromARGB(255, 24, 129, 174)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 7, right: 7, top: 4, bottom: 4),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/linkedin.svg",
                                    width: 12,
                                    height: 12,
                                    color: Colors.white,
                                  ),
                                  const Text(
                                    " LinkedIn",
                                    // "Warning: This webpage is not optimized for mobile devices. Please view in full screen for a better experience.",
                                    // "Note: This website is currently under development for responsiveness. For the best experience, please view on a mobile device or in full-screen mode on desktop.",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
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
