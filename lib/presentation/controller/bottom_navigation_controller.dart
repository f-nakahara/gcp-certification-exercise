import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bottomNavigationController =
    StateNotifierProvider<BottomNavigationController, BottomNavigationItem>(
  (ref) => BottomNavigationController(),
);

enum BottomNavigationItem {
  courseList,
  wordList,
}

class BottomNavigationController extends StateNotifier<BottomNavigationItem> {
  BottomNavigationController() : super(BottomNavigationItem.courseList);

  final rootNavigatorKey = GlobalKey<NavigatorState>();

  final Map<BottomNavigationItem, GlobalKey<NavigatorState>> navigatorKeys = {
    BottomNavigationItem.courseList: GlobalKey<NavigatorState>(),
    BottomNavigationItem.wordList: GlobalKey<NavigatorState>(),
  };

  NavigatorState get currentState => navigatorKeys[state]!.currentState!;

  void selectTab(BottomNavigationItem item) {
    state = item;
  }
}
