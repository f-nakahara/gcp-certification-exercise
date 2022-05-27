import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/course.dart';

/// コース一覧
class CourseList extends StatelessWidget {
  const CourseList({
    Key? key,
    required this.courses,
    this.page = 1,
    this.perPage = 20,
    this.hasNextPage = false,
    this.hasPreviousPage = false,
  }) : super(key: key);

  final List<Course> courses;
  final int page;
  final int perPage;
  final bool hasNextPage;
  final bool hasPreviousPage;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: courses,
    );
  }
}
