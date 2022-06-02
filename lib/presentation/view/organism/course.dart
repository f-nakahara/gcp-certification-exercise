import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/card_button.dart';

/// コース
class Course extends StatelessWidget {
  const Course({Key? key}) : super(key: key);

  void onTap() {}

  @override
  Widget build(BuildContext context) {
    return CardButton(
      title: 'Course Name',
      leading: const Icon(Icons.folder),
      onTap: () {},
    );
  }
}
