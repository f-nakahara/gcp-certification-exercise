import 'package:gcp_certification_exercise/presentation/view/organism/course.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/course_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final courseListController =
    StateNotifierProvider<CourseListController, AsyncValue<CourseList>>(
  (ref) => CourseListController(),
);

class CourseListController extends StateNotifier<AsyncValue<CourseList>> {
  CourseListController() : super(const AsyncLoading());

  Future<void> _fetch({
    bool reload = false,
  }) async {
    state = const AsyncData(
      CourseList(
        courses: [
          Course(),
          Course(),
          Course(),
        ],
      ),
    );
  }

  Future<void> reload() async {
    await _fetch(reload: true);
  }

  Future<void> load() async {
    await _fetch(reload: false);
  }
}
