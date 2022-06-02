import 'package:gcp_certification_exercise/domain/question.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final questionControllers = StateNotifierProvider.family<QuestionController,
    AsyncValue<Question>, String>(
  (ref, id) => QuestionController(),
);

class QuestionController extends StateNotifier<AsyncValue<Question>> {
  QuestionController() : super(const AsyncLoading()) {
    _fetch();
  }

  Future<void> _fetch() async {}
}
