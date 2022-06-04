import 'package:gcp_certification_exercise/domain/certification_list.dart';
import 'package:gcp_certification_exercise/infrastructure/gcp_certification_exercise_api/gcp_certification_exercise_api.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final certificationListController = StateNotifierProvider<
    CertificationListController, AsyncValue<CertificationList>>(
  (ref) {
    return CertificationListController(reader: ref.read);
  },
);

class CertificationListController
    extends StateNotifier<AsyncValue<CertificationList>> {
  CertificationListController({
    required this.reader,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final Reader reader;

  Future<void> _fetch() async {
    final result = await reader(gcpCertificationExerciseAPI).certifications();
    state = AsyncData(result);
  }
}
