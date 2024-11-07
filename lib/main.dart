import 'package:flutter/material.dart';

void main() {
  final col = Column(mainAxisSize: MainAxisSize.min, children: [
    Image.asset('assets/images/drink_banana_juice.png'),
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
