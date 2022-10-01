// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyInfo _$CompanyInfoFromJson(Map<String, dynamic> json) {
  return _CompanyInfo.fromJson(json);
}

/// @nodoc
mixin _$CompanyInfo {
  String get symbol => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get industry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyInfoCopyWith<CompanyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoCopyWith<$Res> {
  factory $CompanyInfoCopyWith(
          CompanyInfo value, $Res Function(CompanyInfo) then) =
      _$CompanyInfoCopyWithImpl<$Res>;
  $Res call(
      {String symbol,
      String description,
      String name,
      String country,
      String industry});
}

/// @nodoc
class _$CompanyInfoCopyWithImpl<$Res> implements $CompanyInfoCopyWith<$Res> {
  _$CompanyInfoCopyWithImpl(this._value, this._then);

  final CompanyInfo _value;
  // ignore: unused_field
  final $Res Function(CompanyInfo) _then;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? industry = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      industry: industry == freezed
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyInfoCopyWith<$Res>
    implements $CompanyInfoCopyWith<$Res> {
  factory _$$_CompanyInfoCopyWith(
          _$_CompanyInfo value, $Res Function(_$_CompanyInfo) then) =
      __$$_CompanyInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String symbol,
      String description,
      String name,
      String country,
      String industry});
}

/// @nodoc
class __$$_CompanyInfoCopyWithImpl<$Res> extends _$CompanyInfoCopyWithImpl<$Res>
    implements _$$_CompanyInfoCopyWith<$Res> {
  __$$_CompanyInfoCopyWithImpl(
      _$_CompanyInfo _value, $Res Function(_$_CompanyInfo) _then)
      : super(_value, (v) => _then(v as _$_CompanyInfo));

  @override
  _$_CompanyInfo get _value => super._value as _$_CompanyInfo;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? industry = freezed,
  }) {
    return _then(_$_CompanyInfo(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      industry: industry == freezed
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyInfo implements _CompanyInfo {
  const _$_CompanyInfo(
      {required this.symbol,
      required this.description,
      required this.name,
      required this.country,
      required this.industry});

  factory _$_CompanyInfo.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyInfoFromJson(json);

  @override
  final String symbol;
  @override
  final String description;
  @override
  final String name;
  @override
  final String country;
  @override
  final String industry;

  @override
  String toString() {
    return 'CompanyInfo(symbol: $symbol, description: $description, name: $name, country: $country, industry: $industry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyInfo &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.industry, industry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(industry));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyInfoCopyWith<_$_CompanyInfo> get copyWith =>
      __$$_CompanyInfoCopyWithImpl<_$_CompanyInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyInfoToJson(
      this,
    );
  }
}

abstract class _CompanyInfo implements CompanyInfo {
  const factory _CompanyInfo(
      {required final String symbol,
      required final String description,
      required final String name,
      required final String country,
      required final String industry}) = _$_CompanyInfo;

  factory _CompanyInfo.fromJson(Map<String, dynamic> json) =
      _$_CompanyInfo.fromJson;

  @override
  String get symbol;
  @override
  String get description;
  @override
  String get name;
  @override
  String get country;
  @override
  String get industry;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyInfoCopyWith<_$_CompanyInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
