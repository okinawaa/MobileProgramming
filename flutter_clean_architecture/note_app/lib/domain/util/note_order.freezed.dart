// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NoteOrderTearOff {
  const _$NoteOrderTearOff();

  NoteOrderTitle title(OrderType orderType) {
    return NoteOrderTitle(
      orderType,
    );
  }

  NoteOrderDate date(OrderType orderType) {
    return NoteOrderDate(
      orderType,
    );
  }

  NoteOrderColor color(OrderType orderType) {
    return NoteOrderColor(
      orderType,
    );
  }
}

/// @nodoc
const $NoteOrder = _$NoteOrderTearOff();

/// @nodoc
mixin _$NoteOrder {
  OrderType get orderType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle value) title,
    required TResult Function(NoteOrderDate value) date,
    required TResult Function(NoteOrderColor value) color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteOrderCopyWith<NoteOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteOrderCopyWith<$Res> {
  factory $NoteOrderCopyWith(NoteOrder value, $Res Function(NoteOrder) then) =
      _$NoteOrderCopyWithImpl<$Res>;
  $Res call({OrderType orderType});

  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class _$NoteOrderCopyWithImpl<$Res> implements $NoteOrderCopyWith<$Res> {
  _$NoteOrderCopyWithImpl(this._value, this._then);

  final NoteOrder _value;
  // ignore: unused_field
  final $Res Function(NoteOrder) _then;

  @override
  $Res call({
    Object? orderType = freezed,
  }) {
    return _then(_value.copyWith(
      orderType: orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }

  @override
  $OrderTypeCopyWith<$Res> get orderType {
    return $OrderTypeCopyWith<$Res>(_value.orderType, (value) {
      return _then(_value.copyWith(orderType: value));
    });
  }
}

/// @nodoc
abstract class $NoteOrderTitleCopyWith<$Res>
    implements $NoteOrderCopyWith<$Res> {
  factory $NoteOrderTitleCopyWith(
          NoteOrderTitle value, $Res Function(NoteOrderTitle) then) =
      _$NoteOrderTitleCopyWithImpl<$Res>;
  @override
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class _$NoteOrderTitleCopyWithImpl<$Res> extends _$NoteOrderCopyWithImpl<$Res>
    implements $NoteOrderTitleCopyWith<$Res> {
  _$NoteOrderTitleCopyWithImpl(
      NoteOrderTitle _value, $Res Function(NoteOrderTitle) _then)
      : super(_value, (v) => _then(v as NoteOrderTitle));

  @override
  NoteOrderTitle get _value => super._value as NoteOrderTitle;

  @override
  $Res call({
    Object? orderType = freezed,
  }) {
    return _then(NoteOrderTitle(
      orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$NoteOrderTitle implements NoteOrderTitle {
  const _$NoteOrderTitle(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'NoteOrder.title(orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoteOrderTitle &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  $NoteOrderTitleCopyWith<NoteOrderTitle> get copyWith =>
      _$NoteOrderTitleCopyWithImpl<NoteOrderTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) {
    return title(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
  }) {
    return title?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle value) title,
    required TResult Function(NoteOrderDate value) date,
    required TResult Function(NoteOrderColor value) color,
  }) {
    return title(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
  }) {
    return title?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
    required TResult orElse(),
  }) {
    if (title != null) {
      return title(this);
    }
    return orElse();
  }
}

abstract class NoteOrderTitle implements NoteOrder {
  const factory NoteOrderTitle(OrderType orderType) = _$NoteOrderTitle;

  @override
  OrderType get orderType;
  @override
  @JsonKey(ignore: true)
  $NoteOrderTitleCopyWith<NoteOrderTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteOrderDateCopyWith<$Res>
    implements $NoteOrderCopyWith<$Res> {
  factory $NoteOrderDateCopyWith(
          NoteOrderDate value, $Res Function(NoteOrderDate) then) =
      _$NoteOrderDateCopyWithImpl<$Res>;
  @override
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class _$NoteOrderDateCopyWithImpl<$Res> extends _$NoteOrderCopyWithImpl<$Res>
    implements $NoteOrderDateCopyWith<$Res> {
  _$NoteOrderDateCopyWithImpl(
      NoteOrderDate _value, $Res Function(NoteOrderDate) _then)
      : super(_value, (v) => _then(v as NoteOrderDate));

  @override
  NoteOrderDate get _value => super._value as NoteOrderDate;

  @override
  $Res call({
    Object? orderType = freezed,
  }) {
    return _then(NoteOrderDate(
      orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$NoteOrderDate implements NoteOrderDate {
  const _$NoteOrderDate(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'NoteOrder.date(orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoteOrderDate &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  $NoteOrderDateCopyWith<NoteOrderDate> get copyWith =>
      _$NoteOrderDateCopyWithImpl<NoteOrderDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) {
    return date(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
  }) {
    return date?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle value) title,
    required TResult Function(NoteOrderDate value) date,
    required TResult Function(NoteOrderColor value) color,
  }) {
    return date(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
  }) {
    return date?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
    required TResult orElse(),
  }) {
    if (date != null) {
      return date(this);
    }
    return orElse();
  }
}

abstract class NoteOrderDate implements NoteOrder {
  const factory NoteOrderDate(OrderType orderType) = _$NoteOrderDate;

  @override
  OrderType get orderType;
  @override
  @JsonKey(ignore: true)
  $NoteOrderDateCopyWith<NoteOrderDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteOrderColorCopyWith<$Res>
    implements $NoteOrderCopyWith<$Res> {
  factory $NoteOrderColorCopyWith(
          NoteOrderColor value, $Res Function(NoteOrderColor) then) =
      _$NoteOrderColorCopyWithImpl<$Res>;
  @override
  $Res call({OrderType orderType});

  @override
  $OrderTypeCopyWith<$Res> get orderType;
}

/// @nodoc
class _$NoteOrderColorCopyWithImpl<$Res> extends _$NoteOrderCopyWithImpl<$Res>
    implements $NoteOrderColorCopyWith<$Res> {
  _$NoteOrderColorCopyWithImpl(
      NoteOrderColor _value, $Res Function(NoteOrderColor) _then)
      : super(_value, (v) => _then(v as NoteOrderColor));

  @override
  NoteOrderColor get _value => super._value as NoteOrderColor;

  @override
  $Res call({
    Object? orderType = freezed,
  }) {
    return _then(NoteOrderColor(
      orderType == freezed
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderType,
    ));
  }
}

/// @nodoc

class _$NoteOrderColor implements NoteOrderColor {
  const _$NoteOrderColor(this.orderType);

  @override
  final OrderType orderType;

  @override
  String toString() {
    return 'NoteOrder.color(orderType: $orderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoteOrderColor &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderType);

  @JsonKey(ignore: true)
  @override
  $NoteOrderColorCopyWith<NoteOrderColor> get copyWith =>
      _$NoteOrderColorCopyWithImpl<NoteOrderColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderType orderType) title,
    required TResult Function(OrderType orderType) date,
    required TResult Function(OrderType orderType) color,
  }) {
    return color(orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
  }) {
    return color?.call(orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderType orderType)? title,
    TResult Function(OrderType orderType)? date,
    TResult Function(OrderType orderType)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoteOrderTitle value) title,
    required TResult Function(NoteOrderDate value) date,
    required TResult Function(NoteOrderColor value) color,
  }) {
    return color(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
  }) {
    return color?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoteOrderTitle value)? title,
    TResult Function(NoteOrderDate value)? date,
    TResult Function(NoteOrderColor value)? color,
    required TResult orElse(),
  }) {
    if (color != null) {
      return color(this);
    }
    return orElse();
  }
}

abstract class NoteOrderColor implements NoteOrder {
  const factory NoteOrderColor(OrderType orderType) = _$NoteOrderColor;

  @override
  OrderType get orderType;
  @override
  @JsonKey(ignore: true)
  $NoteOrderColorCopyWith<NoteOrderColor> get copyWith =>
      throw _privateConstructorUsedError;
}
