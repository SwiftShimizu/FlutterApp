import 'package:flutter/material.dart';
// riverpodのインポート
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const controller = TextEditingController();

  const textField = TextField(
    controller: controller,
    decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "あなたの名前",
        hintText: "カタカナで入力してください",
        errorText: "名前が長過ぎます"),
  );

  final a = MaterialApp(
    home: Scaffold(
      body: Center(
        child: textField,
      ),
    ),
  );
  runApp(a);
}
