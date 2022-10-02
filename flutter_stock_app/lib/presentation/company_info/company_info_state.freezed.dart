// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyInfoState _$CompanyInfoStateFromJson(Map<String, dynamic> json) {
  return _CompanyInfoState.fromJson(json);
}

/// @nodoc
mixin _$CompanyInfoState {
  CompanyInfo? get companyInfo => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<IntradayInfo> get stockInfos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyInfoStateCopyWith<CompanyInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyInfoStateCopyWith<$Res> {
  factory $CompanyInfoStateCopyWith(
          CompanyInfoState value, $Res Function(CompanyInfoState) then) =
      _$CompanyInfoStateCopyWithImpl<$Res>;
  $Res call(
      {CompanyInfo? companyInfo,
      bool isLoading,
      String? errorMessage,
      List<IntradayInfo> stockInfos});

  $CompanyInfoCopyWith<$Res>? get companyInfo;
}

/// @nodoc
class _$CompanyInfoStateCopyWithImpl<$Res>
    implements $CompanyInfoStateCopyWith<$Res> {
  _$CompanyInfoStateCopyWithImpl(this._value, this._then);

  final CompanyInfoState _value;
  // ignore: unused_field
  final $Res Function(CompanyInfoState) _then;

  @override
  $Res call({
    Object? companyInfo = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
    Object? stockInfos = freezed,
  }) {
    return _then(_value.copyWith(
      companyInfo: companyInfo == freezed
          ? _value.companyInfo
          : companyInfo // ignore: cast_nullable_to_non_nullable
              as CompanyInfo?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stockInfos: stockInfos == freezed
          ? _value.stockInfos
          : stockInfos // ignore: cast_nullable_to_non_nullable
              as List<IntradayInfo>,
    ));
  }

  @override
  $CompanyInfoCopyWith<$Res>? get companyInfo {
    if (_value.companyInfo == null) {
      return null;
    }

    return $CompanyInfoCopyWith<$Res>(_value.companyInfo!, (value) {
      return _then(_value.copyWith(companyInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_CompanyInfoStateCopyWith<$Res>
    implements $CompanyInfoStateCopyWith<$Res> {
  factory _$$_CompanyInfoStateCopyWith(
          _$_CompanyInfoState value, $Res Function(_$_CompanyInfoState) then) =
      __$$_CompanyInfoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CompanyInfo? companyInfo,
      bool isLoading,
      String? errorMessage,
      List<IntradayInfo> stockInfos});

  @override
  $CompanyInfoCopyWith<$Res>? get companyInfo;
}

/// @nodoc
class __$$_CompanyInfoStateCopyWithImpl<$Res>
    extends _$CompanyInfoStateCopyWithImpl<$Res>
    implements _$$_CompanyInfoStateCopyWith<$Res> {
  __$$_CompanyInfoStateCopyWithImpl(
      _$_CompanyInfoState _value, $Res Function(_$_CompanyInfoState) _then)
      : super(_value, (v) => _then(v as _$_CompanyInfoState));

  @override
  _$_CompanyInfoState get _value => super._value as _$_CompanyInfoState;

  @override
  $Res call({
    Object? companyInfo = freezed,
    Object? isLoading = freezed,
    Object? errorMessage = freezed,
    Object? stockInfos = freezed,
  }) {
    return _then(_$_CompanyInfoState(
      companyInfo: companyInfo == freezed
          ? _value.companyInfo
          : companyInfo // ignore: cast_nullable_to_non_nullable
              as CompanyInfo?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      stockInfos: stockInfos == freezed
          ? _value._stockInfos
          : stockInfos // ignore: cast_nullable_to_non_nullable
              as List<IntradayInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyInfoState implements _CompanyInfoState {
  const _$_CompanyInfoState(
      {this.companyInfo,
      this.isLoading = false,
      this.errorMessage,
      final List<IntradayInfo> stockInfos = const []})
      : _stockInfos = stockInfos;

  factory _$_CompanyInfoState.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyInfoStateFromJson(json);

  @override
  final CompanyInfo? companyInfo;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  final List<IntradayInfo> _stockInfos;
  @override
  @JsonKey()
  List<IntradayInfo> get stockInfos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stockInfos);
  }

  @override
  String toString() {
    return 'CompanyInfoState(companyInfo: $companyInfo, isLoading: $isLoading, errorMessage: $errorMessage, stockInfos: $stockInfos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CompanyInfoState &&
            const DeepCollectionEquality()
                .equals(other.companyInfo, companyInfo) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._stockInfos, _stockInfos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(companyInfo),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(_stockInfos));

  @JsonKey(ignore: true)
  @override
  _$$_CompanyInfoStateCopyWith<_$_CompanyInfoState> get copyWith =>
      __$$_CompanyInfoStateCopyWithImpl<_$_CompanyInfoState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyInfoStateToJson(this);
  }
}

abstract class _CompanyInfoState implements CompanyInfoState {
  const factory _CompanyInfoState(
      {final CompanyInfo? companyInfo,
      final bool isLoading,
      final String? errorMessage,
      final List<IntradayInfo> stockInfos}) = _$_CompanyInfoState;

  factory _CompanyInfoState.fromJson(Map<String, dynamic> json) =
      _$_CompanyInfoState.fromJson;

  @override
  CompanyInfo? get companyInfo => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  String? get errorMessage => throw _privateConstructorUsedError;
  @override
  List<IntradayInfo> get stockInfos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CompanyInfoStateCopyWith<_$_CompanyInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
