import 'package:flutter/material.dart';

/// コース
class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  void onTap() {}

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        title: Text('Course Name'),
        leading: Icon(Icons.folder),
        onTap: () {},
      ),
    );
  }
}
