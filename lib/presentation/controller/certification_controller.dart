import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/domain/certification.dart';
import 'package:gcp_certification_exercise/presentation/controller/certification_list_controller.dart';
import 'package:gcp_certification_exercise/presentation/util/navigator_util.dart';
import 'package:gcp_certification_exercise/presentation/view/page/question_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final certificationController = StateNotifierProvider.family<
    CertificationController, AsyncValue<Certification>, String>(
  (ref, id) => CertificationController(
    reader: ref.read,
    id: id,
  ),
);

class CertificationController extends StateNotifier<AsyncValue<Certification>> {
  CertificationController({
    required this.reader,
    required this.id,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final Reader reader;
  final String id;

  Future<void> _fetch() async {
    final certification = reader(certificationListController)
        .value!
        .certifications
        .singleWhere((element) => element.id == id);
    state = AsyncData(certification);
  }

  Future showQuestionPage({
    required BuildContext context,
  }) async {
    NavigatorUtil.push(
      context: context,
      page: const QuestionPage(),
    );
  }
}
