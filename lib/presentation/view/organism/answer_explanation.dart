import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/question.dart';

/// 解答解説
class AnswerExplanation extends StatelessWidget {
  const AnswerExplanation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        /// 問題文
        Flexible(
          child: Question(),
        ),
        SizedBox(height: 20),

        /// 解答解説
        Text(
          'A. が正解です。自動化は、変更の一貫性を保ちリスクを低く抑えるための変革的なアプローチです。\n'
          'B. は不正解です。これは戦術的なアプローチであり、多くの場合は変更のリスクが高まり、デプロイの頻度が低下します。\n'
          'C. は不正解です。そもそも問題の発生を抑制できていないため、このアプローチは変革的ではありません。\n',
        ),
      ],
    );
  }
}
