import 'package:hooks_riverpod/hooks_riverpod.dart';

enum BottomNavigationItem {
  courseList,
  wordList,
}

class BottomNavigationController extends StateNotifier<BottomNavigationItem> {
  BottomNavigationController() : super(BottomNavigationItem.courseList);

  void selectTab(BottomNavigationItem item) {
    state = item;
  }
}