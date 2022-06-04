import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/my_scaffold.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/certification_list.dart';

/// 資格一覧画面
class CertificationListPage extends StatelessWidget {
  const CertificationListPage({
    Key? key,
    required this.courseName,
  }) : super(key: key);

  final String courseName;

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: CertificationList(
        courseName: courseName,
      ),
    );
  }
}
