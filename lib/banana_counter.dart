import 'package:flutter/material.dart';

class BananaCounter extends StatelessWidget {
  // バナナの数
  final int number;
  const BananaCounter({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    // バナナの部分
    final banana = Image.asset('assets/images/drink_banana_juice.png',
        width: 50, height: 50);
    // 数字の部分
    final text = Text('$number');
    // バナナと数字を横に並べる
    final row = Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [banana, text]);
    // 色と大きさを決める
    final container = Container(
      color: Colors.deepOrange,
      width: 200,
      height: 130,
      child: row,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.all(20),
    );
    return container;
  }
}
