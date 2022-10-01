// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderTypeTearOff {
  const _$OrderTypeTearOff();

  Ascending ascending() {
    return const Ascending();
  }

  Descending descending() {
    return const Descending();
  }
}

/// @nodoc
const $OrderType = _$OrderTypeTearOff();

/// @nodoc
mixin _$OrderType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ascending,
    required TResult Function() descending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? ascending,
    TResult Function()? descending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ascending,
    TResult Function()? descending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ascending value) ascending,
    required TResult Function(Descending value) descending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ascending value)? ascending,
    TResult Function(Descending value)? descending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ascending value)? ascending,
    TResult Function(Descending value)? descending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderTypeCopyWith<$Res> {
  factory $OrderTypeCopyWith(OrderType value, $Res Function(OrderType) then) =
      _$OrderTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderTypeCopyWithImpl<$Res> implements $OrderTypeCopyWith<$Res> {
  _$OrderTypeCopyWithImpl(this._value, this._then);

  final OrderType _value;
  // ignore: unused_field
  final $Res Function(OrderType) _then;
}

/// @nodoc
abstract class $AscendingCopyWith<$Res> {
  factory $AscendingCopyWith(Ascending value, $Res Function(Ascending) then) =
      _$AscendingCopyWithImpl<$Res>;
}

/// @nodoc
class _$AscendingCopyWithImpl<$Res> extends _$OrderTypeCopyWithImpl<$Res>
    implements $AscendingCopyWith<$Res> {
  _$AscendingCopyWithImpl(Ascending _value, $Res Function(Ascending) _then)
      : super(_value, (v) => _then(v as Ascending));

  @override
  Ascending get _value => super._value as Ascending;
}

/// @nodoc

class _$Ascending implements Ascending {
  const _$Ascending();

  @override
  String toString() {
    return 'OrderType.ascending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Ascending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ascending,
    required TResult Function() descending,
  }) {
    return ascending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? ascending,
    TResult Function()? descending,
  }) {
    return ascending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ascending,
    TResult Function()? descending,
    required TResult orElse(),
  }) {
    if (ascending != null) {
      return ascending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ascending value) ascending,
    required TResult Function(Descending value) descending,
  }) {
    return ascending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ascending value)? ascending,
    TResult Function(Descending value)? descending,
  }) {
    return ascending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ascending value)? ascending,
    TResult Function(Descending value)? descending,
    required TResult orElse(),
  }) {
    if (ascending != null) {
      return ascending(this);
    }
    return orElse();
  }
}

abstract class Ascending implements OrderType {
  const factory Ascending() = _$Ascending;
}

/// @nodoc
abstract class $DescendingCopyWith<$Res> {
  factory $DescendingCopyWith(
          Descending value, $Res Function(Descending) then) =
      _$DescendingCopyWithImpl<$Res>;
}

/// @nodoc
class _$DescendingCopyWithImpl<$Res> extends _$OrderTypeCopyWithImpl<$Res>
    implements $DescendingCopyWith<$Res> {
  _$DescendingCopyWithImpl(Descending _value, $Res Function(Descending) _then)
      : super(_value, (v) => _then(v as Descending));

  @override
  Descending get _value => super._value as Descending;
}

/// @nodoc

class _$Descending implements Descending {
  const _$Descending();

  @override
  String toString() {
    return 'OrderType.descending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Descending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ascending,
    required TResult Function() descending,
  }) {
    return descending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? ascending,
    TResult Function()? descending,
  }) {
    return descending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ascending,
    TResult Function()? descending,
    required TResult orElse(),
  }) {
    if (descending != null) {
      return descending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ascending value) ascending,
    required TResult Function(Descending value) descending,
  }) {
    return descending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ascending value)? ascending,
    TResult Function(Descending value)? descending,
  }) {
    return descending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ascending value)? ascending,
    TResult Function(Descending value)? descending,
    required TResult orElse(),
  }) {
    if (descending != null) {
      return descending(this);
    }
    return orElse();
  }
}

abstract class Descending implements OrderType {
  const factory Descending() = _$Descending;
}
