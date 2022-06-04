import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/domain/course.dart';
import 'package:gcp_certification_exercise/presentation/controller/course_list_controller.dart';
import 'package:gcp_certification_exercise/presentation/util/navigator_util.dart';
import 'package:gcp_certification_exercise/presentation/view/page/certification_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final courseControllers =
    StateNotifierProvider.family<CourseController, AsyncValue<Course>, String>(
  (ref, id) => CourseController(reader: ref.read, id: id),
);

class CourseController extends StateNotifier<AsyncValue<Course>> {
  CourseController({
    required this.reader,
    required this.id,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final Reader reader;
  final String id;

  Future<void> _fetch() async {
    final course = reader(courseListController)
        .value!
        .courses
        .singleWhere((element) => element.id == id);
    state = AsyncData(course);
  }

  /// 資格一覧の表示
  Future<void> showCertificationListPage({
    required BuildContext context,
  }) async {
    NavigatorUtil.push(
      context: context,
      page: CertificationListPage(courseName: state.value!.name),
    );
  }
}
