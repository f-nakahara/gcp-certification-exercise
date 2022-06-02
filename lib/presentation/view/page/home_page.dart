import 'package:flutter/material.dart';
import 'package:gcp_certification_exercise/presentation/controller/bottom_navigation_controller.dart';
import 'package:gcp_certification_exercise/presentation/view/atom/my_scaffold.dart';
import 'package:gcp_certification_exercise/presentation/view/page/course_list_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ホーム画面
class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(bottomNavigationController.notifier);
    final currentTab = ref.watch(bottomNavigationController);
    return MyScaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab.index,
        onTap: (index) =>
            controller.selectTab(BottomNavigationItem.values[index]),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '用語',
          ),
        ],
      ),
      child: IndexedStack(
        index: currentTab.index,
        children: const [
          CourseListPage(),
          SizedBox(), // TODO: 単語集画面
        ],
      ),
    );
  }
}
