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

  void onTap() {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(courseControllers(id).notifier);
    return CardButton(
      title: 'Course Name',
      leading: const Icon(Icons.folder),
      onTap: () => controller.showCertificationList(context: context),
    );
  }
}
