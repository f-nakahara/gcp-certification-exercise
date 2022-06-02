import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/question_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/my_scaffold.dart';
import 'package:gcp_certification_exercise/presentation/view/molecule/see_answer_button.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/question.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 問題画面
class QuestionPage extends ConsumerWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(questionControllers('').notifier);
    return MyScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Flexible(
            child: Question(),
          ),
          SeeAnswerButton(
            onPressed: controller.showAnswerExplanationPage,
          ),
        ],
      ),
    );
  }
}
