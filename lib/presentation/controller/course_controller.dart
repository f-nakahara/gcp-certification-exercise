import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/course.dart';
import 'package:gcp_certification_exercise/presentation/view/page/certification_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final courseControllers =
    StateNotifierProvider.family<CourseController, String, AsyncValue<Course>>(
  (ref, id) => CourseController(),
);

class CourseController extends StateNotifier<AsyncValue<Course>> {
  CourseController() : super(const AsyncLoading());

  /// 資格一覧の表示
  Future<void> showCertificationList({
    required BuildContext context,
  }) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const CertificationListPage();
        },
      ),
    );
  }
}
