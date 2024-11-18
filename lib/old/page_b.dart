import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  push(BuildContext context) {
    context.push('/c');
  }

  pop(BuildContext context) {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text('Page B'),
      backgroundColor: Colors.red[200],
    );

    final button = ElevatedButton(
      onPressed: () => push(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red[200]),
      child: const Text('Next'),
    );

    final backButton = ElevatedButton(
      onPressed: () => pop(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red[200]),
      child: const Text('Back'),
    );

    return Scaffold(
        appBar: appBar,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [button, backButton])));
  }
}
