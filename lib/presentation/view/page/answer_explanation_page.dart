import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/my_scaffold.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/answer_explanation.dart';

/// 解答解説画面
class AnswerExplanationPage extends StatelessWidget {
  const AnswerExplanationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(),
      child: const AnswerExplanation(),
    );
  }
}
