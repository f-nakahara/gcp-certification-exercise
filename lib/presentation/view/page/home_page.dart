import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ホーム画面
class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(botto);
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          children: [],
          index: ,
        ),
      ),
    );
  }
}
