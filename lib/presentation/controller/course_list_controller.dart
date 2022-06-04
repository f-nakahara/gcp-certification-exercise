import 'package:gcp_certification_exercise/domain/course_list.dart';
import 'package:gcp_certification_exercise/infrastructure/gcp_certification_exercise_api/gcp_certification_exercise_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final courseListController =
    StateNotifierProvider<CourseListController, AsyncValue<CourseList>>(
  (ref) => CourseListController(reader: ref.read),
);

class CourseListController extends StateNotifier<AsyncValue<CourseList>> {
  CourseListController({
    required this.reader,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final Reader reader;

  Future<void> _fetch({
    bool reload = false,
  }) async {
    final result = await reader(gcpCertificationExerciseAPI).courses();
    state = AsyncData(result);
  }

  Future<void> reload() async {
    await _fetch(reload: true);
  }

  Future<void> load() async {
    await _fetch(reload: false);
  }
}
