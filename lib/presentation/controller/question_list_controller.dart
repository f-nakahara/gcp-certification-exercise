import 'package:gcp_certification_exercise/domain/question_list.dart';
import 'package:gcp_certification_exercise/infrastructure/gcp_certification_exercise_api/gcp_certification_exercise_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final questionListController =
    StateNotifierProvider<QuestionListController, AsyncValue<QuestionList>>(
  (ref) => QuestionListController(reader: ref.read),
);

class QuestionListController extends StateNotifier<AsyncValue<QuestionList>> {
  QuestionListController({
    required this.reader,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final Reader reader;

  Future<void> _fetch() async {
    final result = await reader(gcpCertificationExerciseAPI).questions();
    state = AsyncData(result);
  }
}
