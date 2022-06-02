import 'package:gcp_certification_exercise/domain/question_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final questionListController =
    StateNotifierProvider<QuestionListController, AsyncValue<QuestionList>>(
  (ref) => QuestionListController(),
);

class QuestionListController extends StateNotifier<AsyncValue<QuestionList>> {
  QuestionListController() : super(const AsyncLoading()) {
    _fetch();
  }

  Future<void> _fetch() async {
    state = AsyncData(
      QuestionList(
        questions: [],
      ),
    );
  }
}
