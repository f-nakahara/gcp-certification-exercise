import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/certification_list_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/certification.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 資格一覧
class CertificationList extends ConsumerWidget {
  const CertificationList({
    Key? key,
    required this.courseName,
  }) : super(key: key);

  final String courseName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(certificationListController);
    return asyncValue.when(
      data: (data) {
        final certifications = data.certifications
            .where((element) => element.courseName == courseName)
            .toList();
        return ListView(
          children: certifications.map((e) => Certification(id: e.id)).toList(),
        );
      },
      error: (error, _) => Container(),
      loading: () => Container(),
    );
  }
}
