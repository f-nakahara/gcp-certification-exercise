import 'package:gcp_certification_exercise/domain/question.dart';
import 'package:gcp_certification_exercise/presentation/controller/bottom_navigation_controller.dart';
import 'package:gcp_certification_exercise/presentation/util/navigator_util.dart';
import 'package:gcp_certification_exercise/presentation/view/page/answer_explanation_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final questionControllers = StateNotifierProvider.family<QuestionController,
    AsyncValue<Question>, String>(
  (ref, id) => QuestionController(reader: ref.read),
);

class QuestionController extends StateNotifier<AsyncValue<Question>> {
  QuestionController({
    required this.reader,
  }) : super(const AsyncLoading()) {
    _fetch();
  }

  final Reader reader;

  Future<void> _fetch() async {}

  Future showAnswerExplanationPage() async {
    NavigatorUtil.push(
      context: reader(bottomNavigationController.notifier).currentState.context,
      page: const AnswerExplanationPage(),
      fullscreenDialog: true,
      rootNavigator: true,
    );
  }
}
