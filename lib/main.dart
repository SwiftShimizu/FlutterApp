import 'package:flutter/material.dart';

// ツイート
class Tweet {
  final String userName;
  final String iconUrl;
  final String text;
  final String createdAt;
  Tweet(this.userName, this.iconUrl, this.text, this.createdAt);
}

// 適当なモデル
final models = [
  Tweet("さくらんぼ君", "https://example.com/icon.png", "バナナ", "2021-01-02"),
  Tweet("ももちゃん", "https://example.com/icon.png", "リンゴ", "2021-01-03"),
  Tweet("りんご太郎", "https://example.com/icon.png", "イチゴ", "2021-01-04"),
  Tweet("メロン先生", "https://example.com/icon.png", "メロン", "2021-01-05"),
  Tweet("パイナぽん", "https://example.com/icon.png", "パイナップル", "2021-01-06"),
  Tweet("オレンジ姫", "https://example.com/icon.png", "オレンジ", "2021-01-07"),
  Tweet("ぶどう丸", "https://example.com/icon.png", "グレープ", "2021-01-08"),
  Tweet("キウィ博士", "https://example.com/icon.png", "キウイ", "2021-01-09"),
  Tweet("スイカ子", "https://example.com/icon.png", "スイカ", "2021-01-10"),
  Tweet("マンゴー王", "https://example.com/icon.png", "マンゴー", "2021-01-11"),
  Tweet("マスカット姫", "https://example.com/icon.png", "マスカット", "2021-01-12"),
];

// モデル -> ウィジェットに変換する関数
Widget modelToWidget(Tweet model) {
  // ユーザーアイコン
  final icon = Container(
    margin: const EdgeInsets.all(20),
    width: 60,
    height: 60,
    // 画像を丸くする
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Image.asset('assets/images/${model.iconUrl}'),
    ),
  );

  // ユーザー名と投稿日時
  final header = Row(
    children: [
      icon,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(model.userName),
          Text(model.createdAt),
        ],
      ),
    ],
  );

  // 本文
  final text = Container(
    margin: const EdgeInsets.all(20),
    child: Text(model.text),
  );

  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        header,
        text,
      ],
    ),
  );
}

void main() {
  final list = ListView.builder(
    itemBuilder: (c, i) => modelToWidget(models[i]),
    itemCount: models.length,
  );
  final sca = Scaffold(body: list);
  final app = MaterialApp(home: sca);
  runApp(app);
}
