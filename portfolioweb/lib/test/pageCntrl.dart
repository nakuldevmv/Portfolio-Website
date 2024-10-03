import 'package:Nakul_Dev/Data/projects.dart';
import 'package:flutter/material.dart';

class ScrollableListView extends StatefulWidget {
  const ScrollableListView({super.key});

  @override
  _ScrollableListViewState createState() => _ScrollableListViewState();
}

class _ScrollableListViewState extends State<ScrollableListView> {
  final PageController pgController = PageController();
  int currentIndex = 0;

  void toNext() {
    if (currentIndex < projects.length) {
      currentIndex++;
      pgController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void toPrevious() {
    if (currentIndex > 0) {
      currentIndex--;
      pgController.animateToPage(
        currentIndex,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Horizontal ListView with Buttons')),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pgController,
              scrollDirection: Axis.horizontal,
              itemCount: 10, // set the number of items in the list
              itemBuilder: (context, index) {
                return Center(
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blueAccent,
                    alignment: Alignment.center,
                    child: Text(
                      'Item $index',
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: toPrevious,
                  child: const Text('Previous'),
                ),
                ElevatedButton(
                  onPressed: toNext,
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
