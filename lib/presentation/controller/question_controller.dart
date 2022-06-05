import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/domain/question.dart';
import 'package:gcp_certification_exercise/presentation/controller/question_list_controller.dart';
import 'package:gcp_certification_exercise/presentation/util/navigator_util.dart';
import 'package:gcp_certification_exercise/presentation/view/page/answer_explanation_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final questionControllers = StateNotifierProvider.family<QuestionController,
    AsyncValue<Question>, String>(
  (ref, id) => QuestionController(
    reader: ref.read,
    id: id,
  ),
);

class QuestionController extends StateNotifier<AsyncValue<Question>> {
  QuestionController({
    required this.reader,
    required this.id,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final Reader reader;
  final String id;

  Future<void> _fetch() async {
    final question = reader(questionListController)
        .value!
        .questions
        .singleWhere((element) => element.id == id);
    state = AsyncData(question);
  }

  Future showAnswerExplanationPage({
    required BuildContext context,
  }) async {
    NavigatorUtil.push(
      context: context,
      page: AnswerExplanationPage(questionId: id),
      fullscreenDialog: true,
      rootNavigator: true,
    );
  }
}
