import 'package:flutterapp/vegetable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'pack.freezed.dart';
part 'pack.g.dart';

@freezed
class Pack with _$Pack {
  const factory Pack({
    // 大きさ
    required String size,
    // 値段
    required int price,
    // 中身の野菜
    required Vegetable content,
  }) = _Pack;
  factory Pack.fromJson(Map<String, dynamic> json) => _$PackFromJson(json);
}
