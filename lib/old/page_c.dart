import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageC extends StatelessWidget {
  const PageC({super.key});

  pop(BuildContext context) {
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text('Page C'),
      backgroundColor: Colors.yellow[300],
    );

    final backButton = ElevatedButton(
      onPressed: () => pop(context),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow[300]),
      child: const Text('Back'),
    );

    return Scaffold(
        appBar: appBar,
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [backButton])));
  }
}
