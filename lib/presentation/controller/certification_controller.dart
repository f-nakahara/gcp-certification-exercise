import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/domain/certification.dart';
import 'package:gcp_certification_exercise/presentation/util/navigator_util.dart';
import 'package:gcp_certification_exercise/presentation/view/page/question_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'bottom_navigation_controller.dart';

final certificationControllers = StateNotifierProvider.family<
    CertificationController, AsyncValue<Certification>, String>(
  (ref, id) => CertificationController(reader: ref.read),
);

class CertificationController extends StateNotifier<AsyncValue<Certification>> {
  CertificationController({
    required this.reader,
  }) : super(const AsyncLoading());

  final Reader reader;

  Future showQuestionPage({
    required BuildContext context,
  }) async {
      NavigatorUtil.push(
        context: reader(bottomNavigationController.notifier)
            .currentState
            .context,
        page: const QuestionPage(),
      );
  }
}
