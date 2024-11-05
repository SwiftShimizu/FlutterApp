import 'package:flutter/material.dart';

void main() {
  final col = const Column(mainAxisSize: MainAxisSize.min, children: const [
    Text("レモン"),
    Text("オレンジ"),
    Text("バナナ"),
  ]);

  final row = Row(mainAxisSize: MainAxisSize.min, children: [col, col, col]);

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: row,
      ),
    ),
  );
  runApp(a);
}
