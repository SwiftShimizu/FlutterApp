import 'package:flutter/material.dart';

main() {
  const home = Home();
  const app = MaterialApp(home: home);
  runApp(app);
}

class Horse {
  final String name;
  final String iconUri;

  Horse({required this.name, required this.iconUri});
}

final models = [
  Horse(name: 'Horse 1', iconUri: 'horse1.png'),
  Horse(name: 'Horse 2', iconUri: 'horse2.png'),
  Horse(name: 'Horse 3', iconUri: 'horse3.png'),
];

/// 馬のカード Widget
class HorseCard extends StatelessWidget {
  const HorseCard({
    super.key,
    required this.model,
  });
  // データが入ったモデル
  final Horse model;

  @override
  Widget build(BuildContext context) {
    // 画像
    final img = SizedBox(
      height: 100,
      child: Image.asset(
        'assets/images/${model.iconUri}',
      ),
    );

    // 名前
    final text = Text(
      model.name,
      style: const TextStyle(fontSize: 20),
    );

    // 画像と名前を縦に並べる
    final imgAndText = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        img,
        text,
      ],
    );

    // カード部分を作るコンテナ
    return Container(
      decoration: BoxDecoration(
        // 色
        color: Colors.orange,
        // 角丸
        borderRadius: BorderRadius.circular(20),
        // 影
        boxShadow: [
          BoxShadow(
            // 影の設定
            color: Colors.black.withOpacity(0.2), //色
            spreadRadius: 2, // 広がりの大きさ
            blurRadius: 2, // ぼかしの強さ
            offset: const Offset(0, 2), // 方向
          ),
        ],
      ),
      child: imgAndText,
    );
  }
}

Widget modelToWidget(Horse model) {
  return Container(
    padding: const EdgeInsets.all(8),
    child: HorseCard(model: model),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 200,
        color: Colors.blue,
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
          itemCount: models.length,
          itemBuilder: (c, i) => modelToWidget(models[i]),
        ),
      ),
    ));
  }
}
