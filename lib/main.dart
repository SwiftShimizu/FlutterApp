import 'package:flutter/material.dart';
import 'package:flutterapp/banana_counter.dart';

void main() {
  final bananaCounter = BananaCounter(
    number: 3,
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: bananaCounter,
      ),
    ),
  );
  runApp(a);
}
