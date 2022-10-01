// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotesStateTearOff {
  const _$NotesStateTearOff();

  _NotesState call(
      {required List<Note> notes,
      required NoteOrder noteOrder,
      required bool isOrderSectionVisible}) {
    return _NotesState(
      notes: notes,
      noteOrder: noteOrder,
      isOrderSectionVisible: isOrderSectionVisible,
    );
  }
}

/// @nodoc
const $NotesState = _$NotesStateTearOff();

/// @nodoc
mixin _$NotesState {
  List<Note> get notes => throw _privateConstructorUsedError;
  NoteOrder get noteOrder => throw _privateConstructorUsedError;
  bool get isOrderSectionVisible => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesStateCopyWith<NotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res>;
  $Res call(
      {List<Note> notes, NoteOrder noteOrder, bool isOrderSectionVisible});

  $NoteOrderCopyWith<$Res> get noteOrder;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res> implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  final NotesState _value;
  // ignore: unused_field
  final $Res Function(NotesState) _then;

  @override
  $Res call({
    Object? notes = freezed,
    Object? noteOrder = freezed,
    Object? isOrderSectionVisible = freezed,
  }) {
    return _then(_value.copyWith(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      noteOrder: noteOrder == freezed
          ? _value.noteOrder
          : noteOrder // ignore: cast_nullable_to_non_nullable
              as NoteOrder,
      isOrderSectionVisible: isOrderSectionVisible == freezed
          ? _value.isOrderSectionVisible
          : isOrderSectionVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $NoteOrderCopyWith<$Res> get noteOrder {
    return $NoteOrderCopyWith<$Res>(_value.noteOrder, (value) {
      return _then(_value.copyWith(noteOrder: value));
    });
  }
}

/// @nodoc
abstract class _$NotesStateCopyWith<$Res> implements $NotesStateCopyWith<$Res> {
  factory _$NotesStateCopyWith(
          _NotesState value, $Res Function(_NotesState) then) =
      __$NotesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Note> notes, NoteOrder noteOrder, bool isOrderSectionVisible});

  @override
  $NoteOrderCopyWith<$Res> get noteOrder;
}

/// @nodoc
class __$NotesStateCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$NotesStateCopyWith<$Res> {
  __$NotesStateCopyWithImpl(
      _NotesState _value, $Res Function(_NotesState) _then)
      : super(_value, (v) => _then(v as _NotesState));

  @override
  _NotesState get _value => super._value as _NotesState;

  @override
  $Res call({
    Object? notes = freezed,
    Object? noteOrder = freezed,
    Object? isOrderSectionVisible = freezed,
  }) {
    return _then(_NotesState(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      noteOrder: noteOrder == freezed
          ? _value.noteOrder
          : noteOrder // ignore: cast_nullable_to_non_nullable
              as NoteOrder,
      isOrderSectionVisible: isOrderSectionVisible == freezed
          ? _value.isOrderSectionVisible
          : isOrderSectionVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NotesState implements _NotesState {
  _$_NotesState(
      {required this.notes,
      required this.noteOrder,
      required this.isOrderSectionVisible});

  @override
  final List<Note> notes;
  @override
  final NoteOrder noteOrder;
  @override
  final bool isOrderSectionVisible;

  @override
  String toString() {
    return 'NotesState(notes: $notes, noteOrder: $noteOrder, isOrderSectionVisible: $isOrderSectionVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotesState &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            (identical(other.noteOrder, noteOrder) ||
                other.noteOrder == noteOrder) &&
            (identical(other.isOrderSectionVisible, isOrderSectionVisible) ||
                other.isOrderSectionVisible == isOrderSectionVisible));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notes),
      noteOrder,
      isOrderSectionVisible);

  @JsonKey(ignore: true)
  @override
  _$NotesStateCopyWith<_NotesState> get copyWith =>
      __$NotesStateCopyWithImpl<_NotesState>(this, _$identity);
}

abstract class _NotesState implements NotesState {
  factory _NotesState(
      {required List<Note> notes,
      required NoteOrder noteOrder,
      required bool isOrderSectionVisible}) = _$_NotesState;

  @override
  List<Note> get notes;
  @override
  NoteOrder get noteOrder;
  @override
  bool get isOrderSectionVisible;
  @override
  @JsonKey(ignore: true)
  _$NotesStateCopyWith<_NotesState> get copyWith =>
      throw _privateConstructorUsedError;
}
