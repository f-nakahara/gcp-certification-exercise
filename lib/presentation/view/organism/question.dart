import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/question_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 問題
class Question extends ConsumerWidget {
  const Question({
    Key? key,
    required this.id,
  }) : super(key: key);

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(questionControllers(id));
    return asyncValue.when(
      data: (data) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 問題文
              Text(data.body),
              const SizedBox(height: 10),

              /// 選択肢
              Text(data.choices),
            ],
          ),
        );
      },
      error: (error, _) => Container(),
      loading: () => Container(),
    );
  }
}
