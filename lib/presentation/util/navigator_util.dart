import 'package:flutter/material.dart';

class NavigatorUtil {
  NavigatorUtil._();

  static Future push({
    required BuildContext context,
    required Widget page,
    bool fullscreenDialog = false,
  }) async {
    Navigator.of(context).push(
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
