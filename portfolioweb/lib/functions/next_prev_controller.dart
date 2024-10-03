import 'package:Nakul_Dev/Data/projects.dart';
import 'package:flutter/material.dart';

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
