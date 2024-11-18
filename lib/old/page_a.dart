import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  // 進むボタンを押したとき
  push(BuildContext context) {
    // 画面 B へ進む
    context.push('/b');
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text('Page A'),
      backgroundColor: Colors.blue,
    );
    // 進むボタン
    final button = ElevatedButton(
      onPressed: () => push(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: const Text('Next'),
    );
    return Scaffold(
        appBar: appBar,
        body: Center(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [button])));
  }
}
