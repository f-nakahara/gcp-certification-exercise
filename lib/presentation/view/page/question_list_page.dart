import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/my_scaffold.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/question_list.dart';

/// 問題一覧画面
class QuestionListPage extends StatelessWidget {
  const QuestionListPage({
    Key? key,
    required this.certificationName,
  }) : super(key: key);

  final String certificationName;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: QuestionList(
        certificationName: certificationName,
      ),
    );
  }
}
