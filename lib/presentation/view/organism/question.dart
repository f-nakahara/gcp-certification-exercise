import 'package:flutter/material.dart';

/// 問題
class Question extends StatelessWidget {
  const Question({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          /// 問題文
          Text(
              '組織がクラウド導入の成熟レベルを「戦略的」から「変革的」に移行したいと考えています。 スケーリングの手法をどのように変更すべきですか。\n'),
          SizedBox(height: 10),

          /// 選択肢
          Text(
            'A. 変更をプログラムでデプロイする。\n'
            'B. 変更を手作業で確認する。\n'
            'C. 問題が発生したら変更をデプロイする。\n',
          ),
        ],
      ),
    );
  }
}
