import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/certification_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/card_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 資格
class Certification extends ConsumerWidget {
  const Certification({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(certificationController(id).notifier);
    final asyncValue = ref.watch(certificationController(id));
    return asyncValue.when(
      data: (data) {
        return CardButton(
          title: data.name,
          leading: const Icon(Icons.folder),
          onTap: () => controller.showQuestionPage(context: context),
        );
      },
      error: (error, _) => Container(),
      loading: () => Container(),
    );
  }
}
