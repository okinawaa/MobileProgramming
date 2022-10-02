import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'word.g.dart';
part 'word.freezed.dart';

// typeId는 1부터 시작임 not 0 freezed 와 Hive 같이 쓰기

@freezed
class Word with _$Word {
  @HiveType(typeId: 1, adapterName: 'WordAdapter')
  const factory Word(
      {@HiveField(0) required int id,
      @HiveField(1) required String engWord,
      @HiveField(2) required String korWord,
      @HiveField(3) required int correctCount}) = _Word;

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);
}
