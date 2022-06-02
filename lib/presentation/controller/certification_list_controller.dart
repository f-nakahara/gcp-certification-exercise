import 'package:gcp_certification_exercise/domain/certification_list.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final certificationListController = StateNotifierProvider<
    CertificationListController, AsyncValue<CertificationList>>(
  (ref) => CertificationListController(),
);

class CertificationListController
    extends StateNotifier<AsyncValue<CertificationList>> {
  CertificationListController() : super(const AsyncLoading()) {
    _fetch();
  }

  Future<void> _fetch() async {
    state = AsyncData(
      CertificationList(
        certifications: [],
      ),
    );
  }
}
