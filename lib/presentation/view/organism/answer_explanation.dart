import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/question_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/question.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 解答解説
class AnswerExplanation extends ConsumerWidget {
  const AnswerExplanation({
    Key? key,
    required this.questionId,
  }) : super(key: key);

  final String questionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final question = ref
        .watch(questionControllers(questionId).select((value) => value.value!));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        /// 問題文
        Flexible(
          child: Question(id: questionId),
        ),
        const SizedBox(height: 20),

        /// 解答解説
        Text(question.answer),
      ],
    );
  }
}
