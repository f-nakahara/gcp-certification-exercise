import 'package:flutter/material.dart';

class NavigatorUtil {
  NavigatorUtil._();

  static Future push({
    required BuildContext context,
    required Widget page,
    bool fullscreenDialog = false,
    bool rootNavigator = false,
  }) async {
    Navigator.of(context, rootNavigator: rootNavigator).push(
      _pageRoute(
        page: page,
        fullscreenDialog: fullscreenDialog,
      ),
    );
  }

  static PageRoute _pageRoute({
    required Widget page,
    bool fullscreenDialog = false,
  }) {
    return MaterialPageRoute(
      fullscreenDialog: fullscreenDialog,
      builder: (context) {
        return page;
      },
    );
  }
}
