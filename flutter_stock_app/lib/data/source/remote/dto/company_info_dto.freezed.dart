// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyInfoDto _$CompanyInfoDtoFromJson(Map<String, dynamic> json) {
  return _CompanyInfoDto.fromJson(json);
}

/// @nodoc
mixin _$CompanyInfoDto {
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Country')
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'Industry')
  String? get industry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyInfoDtoCopyWith<CompanyInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoDtoCopyWith<$Res> {
  factory $CompanyInfoDtoCopyWith(
          CompanyInfoDto value, $Res Function(CompanyInfoDto) then) =
      _$CompanyInfoDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Industry') String? industry});
}

/// @nodoc
class _$CompanyInfoDtoCopyWithImpl<$Res>
    implements $CompanyInfoDtoCopyWith<$Res> {
  _$CompanyInfoDtoCopyWithImpl(this._value, this._then);

  final CompanyInfoDto _value;
  // ignore: unused_field
  final $Res Function(CompanyInfoDto) _then;

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
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: industry == freezed
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CompanyInfoDtoCopyWith<$Res>
    implements $CompanyInfoDtoCopyWith<$Res> {
  factory _$$_CompanyInfoDtoCopyWith(
          _$_CompanyInfoDto value, $Res Function(_$_CompanyInfoDto) then) =
      __$$_CompanyInfoDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Symbol') String? symbol,
      @JsonKey(name: 'Description') String? description,
      @JsonKey(name: 'Name') String? name,
      @JsonKey(name: 'Country') String? country,
      @JsonKey(name: 'Industry') String? industry});
}

/// @nodoc
class __$$_CompanyInfoDtoCopyWithImpl<$Res>
    extends _$CompanyInfoDtoCopyWithImpl<$Res>
    implements _$$_CompanyInfoDtoCopyWith<$Res> {
  __$$_CompanyInfoDtoCopyWithImpl(
      _$_CompanyInfoDto _value, $Res Function(_$_CompanyInfoDto) _then)
      : super(_value, (v) => _then(v as _$_CompanyInfoDto));

  @override
  _$_CompanyInfoDto get _value => super._value as _$_CompanyInfoDto;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? industry = freezed,
  }) {
    return _then(_$_CompanyInfoDto(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      industry: industry == freezed
          ? _value.industry
          : industry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyInfoDto implements _CompanyInfoDto {
  const _$_CompanyInfoDto(
      {@JsonKey(name: 'Symbol') this.symbol,
      @JsonKey(name: 'Description') this.description,
      @JsonKey(name: 'Name') this.name,
      @JsonKey(name: 'Country') this.country,
      @JsonKey(name: 'Industry') this.industry});

  factory _$_CompanyInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyInfoDtoFromJson(json);

  @override
  @JsonKey(name: 'Symbol')
  final String? symbol;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(name: 'Name')
  final String? name;
  @override
  @JsonKey(name: 'Country')
  final String? country;
  @override
  @JsonKey(name: 'Industry')
  final String? industry;

  @override
  String toString() {
    return 'CompanyInfoDto(symbol: $symbol, description: $description, name: $name, country: $country, industry: $industry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyInfoDto &&
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
  _$$_CompanyInfoDtoCopyWith<_$_CompanyInfoDto> get copyWith =>
      __$$_CompanyInfoDtoCopyWithImpl<_$_CompanyInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyInfoDtoToJson(this);
  }
}

abstract class _CompanyInfoDto implements CompanyInfoDto {
  const factory _CompanyInfoDto(
      {@JsonKey(name: 'Symbol') final String? symbol,
      @JsonKey(name: 'Description') final String? description,
      @JsonKey(name: 'Name') final String? name,
      @JsonKey(name: 'Country') final String? country,
      @JsonKey(name: 'Industry') final String? industry}) = _$_CompanyInfoDto;

  factory _CompanyInfoDto.fromJson(Map<String, dynamic> json) =
      _$_CompanyInfoDto.fromJson;

  @override
  @JsonKey(name: 'Symbol')
  String? get symbol => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Country')
  String? get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Industry')
  String? get industry => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyInfoDtoCopyWith<_$_CompanyInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
