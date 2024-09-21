import 'package:flutter/material.dart';
import 'package:portfolioweb/Data/projects.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class myProject extends StatefulWidget {
  final int initialIndex; // Accept the initial index

  const myProject({super.key, required this.initialIndex});

  @override
  _myProjectState createState() => _myProjectState();
}

class _myProjectState extends State<myProject> {
  final ItemScrollController _scrollController = ItemScrollController();

  @override
  void initState() {
    super.initState();

    // Scroll to the initial index after the build is complete
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.scrollTo(
        index: widget.initialIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

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
        child: Column(
          children: [
            // Scrollable Positioned List for Project Details
            Expanded(
              child: ScrollablePositionedList.builder(
                itemCount: projects.length,
                itemScrollController: _scrollController,
                itemBuilder: (context, index) {
                  return Container(
                    child: Text(
                      projects[index].title,
                      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    // const SizedBox(height: 10),
                    // Text(
                    //   projects[index].description,
                    //   style: const TextStyle(fontSize: 16),
                    // ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
