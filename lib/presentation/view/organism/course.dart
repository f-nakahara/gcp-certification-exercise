import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/course_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/card_button.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// コース
class Course extends ConsumerWidget {
  const Course({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(courseControllers(id).notifier);
    final asyncValue = ref.watch(courseControllers(id));
    return asyncValue.when(
      data: (data) {
        return CardButton(
          title: data.name,
          leading: const Icon(Icons.folder),
          onTap: () => controller.showCertificationListPage(context: context),
        );
      },
      error: (error, _) => Container(),
      loading: () => Container(),
    );
  }
}
