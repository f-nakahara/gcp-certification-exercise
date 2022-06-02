import 'package:gcp_certification_exercise/domain/course_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final courseListController =
    StateNotifierProvider<CourseListController, AsyncValue<CourseList>>(
  (ref) => CourseListController(),
);

class CourseListController extends StateNotifier<AsyncValue<CourseList>> {
  CourseListController() : super(const AsyncLoading()) {
    _fetch();
  }

  Future<void> _fetch({
    bool reload = false,
  }) async {
    state = AsyncData(
      CourseList(
        courses: [],
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
