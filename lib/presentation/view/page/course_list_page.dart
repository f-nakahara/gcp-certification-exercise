import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/my_scaffold.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/course_list.dart';

/// コース一覧画面
class CourseListPage extends StatelessWidget {
  const CourseListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      child: CourseList(),
    );
  }
}
