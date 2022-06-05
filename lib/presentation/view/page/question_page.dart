import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/question_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/molecule/see_answer_button.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/question.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 問題画面
class QuestionPage extends ConsumerWidget {
  const QuestionPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(questionControllers(id).notifier);
    final asyncValue = ref.watch(questionControllers(id));
    return asyncValue.when(
      data: (data) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Question(id: id),
            ),
            SeeAnswerButton(
              onPressed: () =>
                  controller.showAnswerExplanationPage(context: context),
            ),
          ],
        );
      },
      error: (error, _) => Container(),
      loading: () => Container(),
    );
  }
}
