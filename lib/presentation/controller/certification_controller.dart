import 'package:gcp_certification_exercise/domain/certification.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final certificationControllers = StateNotifierProvider.family<
    CertificationController, AsyncValue<Certification>, String>(
  (ref, id) => CertificationController(),
);

class CertificationController extends StateNotifier<AsyncValue<Certification>> {
  CertificationController() : super(const AsyncLoading());
}
