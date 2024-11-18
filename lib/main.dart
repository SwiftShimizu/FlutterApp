import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/pack.dart';
import 'dart:convert';

import 'package:flutterapp/vegetable.dart';

void main() async {
  test3();
}

void test1() async {
  WidgetsFlutterBinding.ensureInitialized();

  final json = await rootBundle.loadString('assets/stub/level1.json');
  final map = jsonDecode(json);
  final data = Vegetable.fromJson(map);
  debugPrint('データの中身は $data');
}

void test2() async {
  const data = Vegetable(name: 'キャベツ', color: '緑', season: '春');
  final map = data.toJson();
  final json = jsonEncode(map);
  debugPrint('JSONの中身は $json');
}

void test3() async {
  WidgetsFlutterBinding.ensureInitialized();
  final json = await rootBundle.loadString('assets/stub/level2.json');
  final map = jsonDecode(json);
  final data = Pack.fromJson(map);
  debugPrint('データの中身は $data');
}

void test4() async {
  // 適当な野菜
  const content = Vegetable(
    name: 'アボガド',
    color: '濃いみどり',
    season: '秋',
  );
  // 野菜パックのデータ
  const data = Pack(
    size: '中',
    price: 800,
    content: content,
  );
  // JsonMap <--- データ
  final map = data.toJson();
  // JSON <--- JsonMap
  final json = jsonEncode(map);
  // JSONの中身を確認する
  debugPrint('JSONの中身は $json');
}

void test5() async {}

void test6() async {}

void test7() async {}

void test8() async {}

void test9() async {}

void test10() async {}
