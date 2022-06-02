import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/question_list_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/question.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 問題一覧
class QuestionList extends ConsumerWidget {
  const QuestionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(questionListController);
    return asyncValue.when(
      data: (data) {
        final questions = data.questions;
        return PageView(
          children: [
            Question(),
            Question(),
            Question(),
          ],
        );
      },
      error: (error, _) => Container(),
      loading: () => Container(),
    );
  }
}
