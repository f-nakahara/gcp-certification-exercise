import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/my_scaffold.dart';
import 'package:gcp_certification_exercise/presentation/view/molecule/see_answer_button.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/question.dart';

/// 問題画面
class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Flexible(
            child: Question(),
          ),
          SeeAnswerButton(
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
