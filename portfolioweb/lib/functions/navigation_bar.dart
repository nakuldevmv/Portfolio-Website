import 'package:Nakul_Dev/functions/navigate.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsiveLayout_Main.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsive_AboutMe.dart';
import 'package:Nakul_Dev/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsive_Projects.dart';
import 'package:Nakul_Dev/nakuldev_portfolio/ToResponsivePage/toResponsive_contactMe.dart';

// Navigation wrapper to show bottom nav bar only on certain pages
class NavigationWrapper extends StatefulWidget {
  final Widget child;
  final bool showNavBar;
  final int currentIndex;

  const NavigationWrapper({super.key, required this.child, this.showNavBar = true, required this.currentIndex});

  @override
  State<NavigationWrapper> createState() => _NavigationWrapperState();
}

class _NavigationWrapperState extends State<NavigationWrapper> {
  late int _selectedIndex;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.currentIndex;
  }

  @override
  void didUpdateWidget(NavigationWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentIndex != oldWidget.currentIndex) {
      _selectedIndex = widget.currentIndex;
    }
  }

  // List of pages for navigation
  final List<Widget> pages = [
    toResponsiveLayout(),
    const toResponsiveLayout_project(initialIndex: 0),
    toResponsiveLayout_contactMe(),
    toResponsiveLayout_AboutMe()
  ];

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        widget.child,
        _selectedIndex == 1
            ? Container(
                width: deviceWidth,
                // height: navigation_containerStyle.height,

                height: navigation_containerStyle.height + 40,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(0, 0, 0, 0),
                    Color.fromARGB(85, 0, 0, 0),
                    Color.fromARGB(200, 0, 0, 0)
                  ],
                  stops: [
                    0.33,
                    0.66,
                    0.99
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
              )
            : const Offstage(),
        widget.showNavBar
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff614385),
                        Color(0xff516395)
                      ],
                      stops: [
                        0,
                        1
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ),
                    // color: navigation_containerStyle.color,
                    borderRadius: containerStyle.borderRadius,
                  ),
                  height: navigation_containerStyle.height,
                  padding: navigation_containerStyle.padding,
                  width: deviceWidth < 412 ? deviceWidth * navigation_containerStyle.width : 412,
                  child: ClipRRect(
                    borderRadius: containerStyle.borderRadius,
                    child: GNav(
                      tabBorderRadius: 10,
                      haptic: true,
                      backgroundColor: Colors.transparent,
                      gap: 8.5,
                      color: const Color.fromARGB(255, 161, 161, 161),
                      activeColor: Colors.white,
                      rippleColor: Colors.grey[800]!,
                      hoverColor: Colors.grey[700]!,
                      iconSize: deviceWidth < 412 ? deviceWidth * 0.05 : 20,
                      textStyle: GoogleFonts.jetBrainsMono(
                        textStyle: textStyles.B,
                        fontSize: deviceWidth < 412 ? deviceWidth * 0.037 : 15,
                      ),
                      // textStyle:  TextStyle(fontSize: 16, color: Colors.white),
                      tabBackgroundColor: Colors.grey[900]!,
                      padding: const EdgeInsets.all(10),
                      duration: const Duration(milliseconds: 800),
                      tabs: const [
                        GButton(
                          // iconColor: Colors.amberAccent,
                          icon: Icons.home_filled,
                          text: 'Home',
                        ),
                        GButton(
                          icon: Icons.folder,
                          text: 'Projects',
                        ),
                        GButton(
                          icon: Icons.person,
                          text: 'About Me',
                        ),
                        GButton(
                          icon: Icons.mail,
                          text: 'Contact Me',
                        ),
                      ],
                      selectedIndex: _selectedIndex,
                      onTabChange: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                        switch (index) {
                          case 0:
                            navigateTo(context, toResponsiveLayout(currentIndex: 0));
                            break;
                          case 1:
                            navigateTo(context, const toResponsiveLayout_project(initialIndex: 0, currentIndex: 1));
                            break;

                          case 2:
                            navigateTo(context, toResponsiveLayout_AboutMe(currentIndex: 2));
                            break;
                          case 3:
                            navigateTo(context, toResponsiveLayout_contactMe(currentIndex: 3));
                            break;
                        }
                      },
                    ),
                  ),
                ),
              )
            : const Offstage()
      ],
    );
  }
}
