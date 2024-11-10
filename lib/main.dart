import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp/page_a.dart';
import 'package:flutterapp/page_b.dart';
import 'package:flutterapp/page_c.dart';

void main() {
  const app = MaterialApp(
    home: const Root(),
  );
  runApp(ProviderScope(child: app));
}

// プロバイダー
final indexProvider = StateProvider(
  (ref) {
    return 0;
  },
);

class Root extends ConsumerWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);

    // ボトムナビケーションバーアイテム
    final items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Settings',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ];

    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.deepOrangeAccent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      currentIndex: index,
      onTap: (int index) {
        ref.read(indexProvider.notifier).state = index;
      },
    );

    final pages = [
      PageA(),
      PageB(),
      PageC(),
    ];

    return Scaffold(
      body: pages[index],
      bottomNavigationBar: bar,
    );
  }
}
