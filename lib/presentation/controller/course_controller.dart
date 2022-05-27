import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/view/page/certification_list_page.dart';

class CourseController {
  /// 資格一覧の表示
  Future<void> showCertificationList({
    required BuildContext context,
    required String id,
  }) async {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return const CertificationListPage();
        },
      ),
    );
  }
}
