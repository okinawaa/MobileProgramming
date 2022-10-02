// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Word _$WordFromJson(Map<String, dynamic> json) {
  return _Word.fromJson(json);
}

/// @nodoc
mixin _$Word {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get engWord => throw _privateConstructorUsedError;
  @HiveField(2)
  String get korWord => throw _privateConstructorUsedError;
  @HiveField(3)
  int get correctCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordCopyWith<Word> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordCopyWith<$Res> {
  factory $WordCopyWith(Word value, $Res Function(Word) then) =
      _$WordCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String engWord,
      @HiveField(2) String korWord,
      @HiveField(3) int correctCount});
}

/// @nodoc
class _$WordCopyWithImpl<$Res> implements $WordCopyWith<$Res> {
  _$WordCopyWithImpl(this._value, this._then);

  final Word _value;
  // ignore: unused_field
  final $Res Function(Word) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? engWord = freezed,
    Object? korWord = freezed,
    Object? correctCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      engWord: engWord == freezed
          ? _value.engWord
          : engWord // ignore: cast_nullable_to_non_nullable
              as String,
      korWord: korWord == freezed
          ? _value.korWord
          : korWord // ignore: cast_nullable_to_non_nullable
              as String,
      correctCount: correctCount == freezed
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WordCopyWith<$Res> implements $WordCopyWith<$Res> {
  factory _$$_WordCopyWith(_$_Word value, $Res Function(_$_Word) then) =
      __$$_WordCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String engWord,
      @HiveField(2) String korWord,
      @HiveField(3) int correctCount});
}

/// @nodoc
class __$$_WordCopyWithImpl<$Res> extends _$WordCopyWithImpl<$Res>
    implements _$$_WordCopyWith<$Res> {
  __$$_WordCopyWithImpl(_$_Word _value, $Res Function(_$_Word) _then)
      : super(_value, (v) => _then(v as _$_Word));

  @override
  _$_Word get _value => super._value as _$_Word;

  @override
  $Res call({
    Object? id = freezed,
    Object? engWord = freezed,
    Object? korWord = freezed,
    Object? correctCount = freezed,
  }) {
    return _then(_$_Word(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      engWord: engWord == freezed
          ? _value.engWord
          : engWord // ignore: cast_nullable_to_non_nullable
              as String,
      korWord: korWord == freezed
          ? _value.korWord
          : korWord // ignore: cast_nullable_to_non_nullable
              as String,
      correctCount: correctCount == freezed
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'WordAdapter')
class _$_Word implements _Word {
  const _$_Word(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.engWord,
      @HiveField(2) required this.korWord,
      @HiveField(3) required this.correctCount});

  factory _$_Word.fromJson(Map<String, dynamic> json) => _$$_WordFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String engWord;
  @override
  @HiveField(2)
  final String korWord;
  @override
  @HiveField(3)
  final int correctCount;

  @override
  String toString() {
    return 'Word(id: $id, engWord: $engWord, korWord: $korWord, correctCount: $correctCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Word &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.engWord, engWord) &&
            const DeepCollectionEquality().equals(other.korWord, korWord) &&
            const DeepCollectionEquality()
                .equals(other.correctCount, correctCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(engWord),
      const DeepCollectionEquality().hash(korWord),
      const DeepCollectionEquality().hash(correctCount));

  @JsonKey(ignore: true)
  @override
  _$$_WordCopyWith<_$_Word> get copyWith =>
      __$$_WordCopyWithImpl<_$_Word>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordToJson(
      this,
    );
  }
}

abstract class _Word implements Word {
  const factory _Word(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String engWord,
      @HiveField(2) required final String korWord,
      @HiveField(3) required final int correctCount}) = _$_Word;

  factory _Word.fromJson(Map<String, dynamic> json) = _$_Word.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get engWord;
  @override
  @HiveField(2)
  String get korWord;
  @override
  @HiveField(3)
  int get correctCount;
  @override
  @JsonKey(ignore: true)
  _$$_WordCopyWith<_$_Word> get copyWith => throw _privateConstructorUsedError;
}
