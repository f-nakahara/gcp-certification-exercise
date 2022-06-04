import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/course_list_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/course.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// コース一覧
class CourseList extends ConsumerWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(courseListController);
    return asyncValue.when(
      data: (data) {
        final courses = data.courses;
        return ListView(
          children: courses.map((e) => Course(id: e.id)).toList(),
        );
      },
      error: (error, _) => Container(),
      loading: () => Container(),
    );
  }
}
