import 'package:flutter/material.dart';
import 'package:flutterapp/banana_counter.dart';

void main() {
  final bananaCounter = BananaCounter(
    number: 3,
  );

  xxxx() {
    debugPrint('通信を開始します');
    debugPrint('通信中です');
    debugPrint('通信が完了しました');
  }

  final button = ElevatedButton(
    onPressed: xxxx,
    child: Text(
      'ボタン',
      style: TextStyle(color: Colors.white),
    ),
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
    ),
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: button,
      ),
    ),
  );
  runApp(a);
}
