import 'package:flutter/material.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({
    Key? key,
    required this.child,
    this.bottomNavigationBar,
  }) : super(key: key);

  final Widget child;
  final BottomNavigationBar? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
