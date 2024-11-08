import 'package:flutter/material.dart';

final PageController pgController = PageController();
final PageController pgController2 = PageController();
int currentIndex = 0;

void toNext(L, cntrl) {
  if (currentIndex < L) {
    currentIndex++;
    cntrl.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}

void toPrevious(cntrl) {
  if (currentIndex > 0) {
    currentIndex--;

    cntrl.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
