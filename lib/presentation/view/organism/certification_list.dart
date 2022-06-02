import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/certification_list_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/organism/certification.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 資格一覧
class CertificationList extends ConsumerWidget {
  const CertificationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(certificationListController);
    return asyncValue.when(
      data: (data) {
        final certifications = data.certifications;
        return ListView(
          children: [
            Certification(id: '1'),
            Certification(id: '1'),
            Certification(id: '1'),
          ],
        );
      },
      error: (error, _) => Container(),
      loading: () => Container(),
    );
  }
}
