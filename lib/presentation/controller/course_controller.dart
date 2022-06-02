import 'package:gcp_certification_exercise/presentation/util/navigator_util.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/course.dart';
import 'package:gcp_certification_exercise/presentation/view/page/certification_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'bottom_navigation_controller.dart';

final courseControllers =
    StateNotifierProvider.family<CourseController, AsyncValue<Course>, String>(
  (ref, id) => CourseController(reader: ref.read),
);

class CourseController extends StateNotifier<AsyncValue<Course>> {
  CourseController({
    required this.reader,
  }) : super(const AsyncLoading());

  final Reader reader;

  /// 資格一覧の表示
  Future<void> showCertificationListPage() async {
    NavigatorUtil.push(
      context: reader(bottomNavigationController.notifier).currentState.context,
      page: const CertificationListPage(),
    );
    // NavigatorUtil.push(
    //   context: context,
    //   page: const CertificationListPage(),
    // );
  }
}
