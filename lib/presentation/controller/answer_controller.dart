import 'package:hooks_riverpod/hooks_riverpod.dart';

final answerControllers =
    StateNotifierProvider.family<AnswerController, String, String>(
  (ref, questionId) => AnswerController(),
);

class AnswerController extends StateNotifier<AsyncValue<String>> {
  AnswerController() : super(const AsyncLoading()) {
    _fetch();
  }

  Future<void> _fetch() async {}
}
