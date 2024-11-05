import 'package:flutter/material.dart';

void main() {
  final col = const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text("レモン"),
        Text("オレンジ"),
        Text("バナナ"),
      ]);

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: col,
      ),
    ),
  );
  runApp(a);
}
