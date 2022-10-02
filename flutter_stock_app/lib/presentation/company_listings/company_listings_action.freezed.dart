// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_listings_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CompanyListingsAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnSearchQueryChange value) onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(OnSearchQueryChange value)? onSearchQueryChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(OnSearchQueryChange value)? onSearchQueryChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListingsActionCopyWith<$Res> {
  factory $CompanyListingsActionCopyWith(CompanyListingsAction value,
          $Res Function(CompanyListingsAction) then) =
      _$CompanyListingsActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CompanyListingsActionCopyWithImpl<$Res>
    implements $CompanyListingsActionCopyWith<$Res> {
  _$CompanyListingsActionCopyWithImpl(this._value, this._then);

  final CompanyListingsAction _value;
  // ignore: unused_field
  final $Res Function(CompanyListingsAction) _then;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res>
    extends _$CompanyListingsActionCopyWithImpl<$Res>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, (v) => _then(v as _$Refresh));

  @override
  _$Refresh get _value => super._value as _$Refresh;
}

/// @nodoc

class _$Refresh implements Refresh {
  const _$Refresh();

  @override
  String toString() {
    return 'CompanyListingsAction.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChange,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnSearchQueryChange value) onSearchQueryChange,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(OnSearchQueryChange value)? onSearchQueryChange,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(OnSearchQueryChange value)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements CompanyListingsAction {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class _$$OnSearchQueryChangeCopyWith<$Res> {
  factory _$$OnSearchQueryChangeCopyWith(_$OnSearchQueryChange value,
          $Res Function(_$OnSearchQueryChange) then) =
      __$$OnSearchQueryChangeCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$OnSearchQueryChangeCopyWithImpl<$Res>
    extends _$CompanyListingsActionCopyWithImpl<$Res>
    implements _$$OnSearchQueryChangeCopyWith<$Res> {
  __$$OnSearchQueryChangeCopyWithImpl(
      _$OnSearchQueryChange _value, $Res Function(_$OnSearchQueryChange) _then)
      : super(_value, (v) => _then(v as _$OnSearchQueryChange));

  @override
  _$OnSearchQueryChange get _value => super._value as _$OnSearchQueryChange;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$OnSearchQueryChange(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSearchQueryChange implements OnSearchQueryChange {
  const _$OnSearchQueryChange(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'CompanyListingsAction.onSearchQueryChange(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnSearchQueryChange &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$OnSearchQueryChangeCopyWith<_$OnSearchQueryChange> get copyWith =>
      __$$OnSearchQueryChangeCopyWithImpl<_$OnSearchQueryChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
    required TResult Function(String query) onSearchQueryChange,
  }) {
    return onSearchQueryChange(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
  }) {
    return onSearchQueryChange?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    TResult Function(String query)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (onSearchQueryChange != null) {
      return onSearchQueryChange(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Refresh value) refresh,
    required TResult Function(OnSearchQueryChange value) onSearchQueryChange,
  }) {
    return onSearchQueryChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(OnSearchQueryChange value)? onSearchQueryChange,
  }) {
    return onSearchQueryChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Refresh value)? refresh,
    TResult Function(OnSearchQueryChange value)? onSearchQueryChange,
    required TResult orElse(),
  }) {
    if (onSearchQueryChange != null) {
      return onSearchQueryChange(this);
    }
    return orElse();
  }
}

abstract class OnSearchQueryChange implements CompanyListingsAction {
  const factory OnSearchQueryChange(final String query) = _$OnSearchQueryChange;

  String get query;
  @JsonKey(ignore: true)
  _$$OnSearchQueryChangeCopyWith<_$OnSearchQueryChange> get copyWith =>
      throw _privateConstructorUsedError;
}
