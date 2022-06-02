import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/bottom_navigation_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ホーム画面
class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(bottomNavigationController.notifier);
    final currentTab = ref.watch(bottomNavigationController);
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          children: [
            Container(),
            Container(),
          ],
          index: currentTab.index,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab.index,
        onTap: (index) =>
            controller.selectTab(BottomNavigationItem.values[index]),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
          ),
        ],
      ),
    );
  }
}
