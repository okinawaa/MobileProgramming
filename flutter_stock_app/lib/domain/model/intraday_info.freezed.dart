// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'intraday_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IntradayInfo _$IntradayInfoFromJson(Map<String, dynamic> json) {
  return _IntradayInfo.fromJson(json);
}

/// @nodoc
mixin _$IntradayInfo {
  DateTime get date => throw _privateConstructorUsedError;
  double get close => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IntradayInfoCopyWith<IntradayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntradayInfoCopyWith<$Res> {
  factory $IntradayInfoCopyWith(
          IntradayInfo value, $Res Function(IntradayInfo) then) =
      _$IntradayInfoCopyWithImpl<$Res>;
  $Res call({DateTime date, double close});
}

/// @nodoc
class _$IntradayInfoCopyWithImpl<$Res> implements $IntradayInfoCopyWith<$Res> {
  _$IntradayInfoCopyWithImpl(this._value, this._then);

  final IntradayInfo _value;
  // ignore: unused_field
  final $Res Function(IntradayInfo) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_IntradayInfoCopyWith<$Res>
    implements $IntradayInfoCopyWith<$Res> {
  factory _$$_IntradayInfoCopyWith(
          _$_IntradayInfo value, $Res Function(_$_IntradayInfo) then) =
      __$$_IntradayInfoCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, double close});
}

/// @nodoc
class __$$_IntradayInfoCopyWithImpl<$Res>
    extends _$IntradayInfoCopyWithImpl<$Res>
    implements _$$_IntradayInfoCopyWith<$Res> {
  __$$_IntradayInfoCopyWithImpl(
      _$_IntradayInfo _value, $Res Function(_$_IntradayInfo) _then)
      : super(_value, (v) => _then(v as _$_IntradayInfo));

  @override
  _$_IntradayInfo get _value => super._value as _$_IntradayInfo;

  @override
  $Res call({
    Object? date = freezed,
    Object? close = freezed,
  }) {
    return _then(_$_IntradayInfo(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      close: close == freezed
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IntradayInfo implements _IntradayInfo {
  const _$_IntradayInfo({required this.date, required this.close});

  factory _$_IntradayInfo.fromJson(Map<String, dynamic> json) =>
      _$$_IntradayInfoFromJson(json);

  @override
  final DateTime date;
  @override
  final double close;

  @override
  String toString() {
    return 'IntradayInfo(date: $date, close: $close)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntradayInfo &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.close, close));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(close));

  @JsonKey(ignore: true)
  @override
  _$$_IntradayInfoCopyWith<_$_IntradayInfo> get copyWith =>
      __$$_IntradayInfoCopyWithImpl<_$_IntradayInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IntradayInfoToJson(
      this,
    );
  }
}

abstract class _IntradayInfo implements IntradayInfo {
  const factory _IntradayInfo(
      {required final DateTime date,
      required final double close}) = _$_IntradayInfo;

  factory _IntradayInfo.fromJson(Map<String, dynamic> json) =
      _$_IntradayInfo.fromJson;

  @override
  DateTime get date;
  @override
  double get close;
  @override
  @JsonKey(ignore: true)
  _$$_IntradayInfoCopyWith<_$_IntradayInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
