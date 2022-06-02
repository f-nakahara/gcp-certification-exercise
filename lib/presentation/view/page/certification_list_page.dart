import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/my_scaffold.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/certification_list.dart';

/// 資格一覧画面
class CertificationListPage extends StatelessWidget {
  const CertificationListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      child: CertificationList(),
    );
  }
}
