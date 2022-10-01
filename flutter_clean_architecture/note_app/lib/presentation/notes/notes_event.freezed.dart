// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotesEventTearOff {
  const _$NotesEventTearOff();

  LoadNotes loadNotes() {
    return const LoadNotes();
  }

  DeleteNote deleteNote(Note note) {
    return DeleteNote(
      note,
    );
  }

  RestoreNote restoreNote() {
    return const RestoreNote();
  }

  ChangeOrder changeOrder(NoteOrder noteOrder) {
    return ChangeOrder(
      noteOrder,
    );
  }

  ToggleOrderSection toggleOrderSection() {
    return const ToggleOrderSection();
  }
}

/// @nodoc
const $NotesEvent = _$NotesEventTearOff();

/// @nodoc
mixin _$NotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder) changeOrder,
    required TResult Function() toggleOrderSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ToggleOrderSection value) toggleOrderSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res> implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  final NotesEvent _value;
  // ignore: unused_field
  final $Res Function(NotesEvent) _then;
}

/// @nodoc
abstract class $LoadNotesCopyWith<$Res> {
  factory $LoadNotesCopyWith(LoadNotes value, $Res Function(LoadNotes) then) =
      _$LoadNotesCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadNotesCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements $LoadNotesCopyWith<$Res> {
  _$LoadNotesCopyWithImpl(LoadNotes _value, $Res Function(LoadNotes) _then)
      : super(_value, (v) => _then(v as LoadNotes));

  @override
  LoadNotes get _value => super._value as LoadNotes;
}

/// @nodoc

class _$LoadNotes implements LoadNotes {
  const _$LoadNotes();

  @override
  String toString() {
    return 'NotesEvent.loadNotes()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadNotes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder) changeOrder,
    required TResult Function() toggleOrderSection,
  }) {
    return loadNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
  }) {
    return loadNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ToggleOrderSection value) toggleOrderSection,
  }) {
    return loadNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
  }) {
    return loadNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (loadNotes != null) {
      return loadNotes(this);
    }
    return orElse();
  }
}

abstract class LoadNotes implements NotesEvent {
  const factory LoadNotes() = _$LoadNotes;
}

/// @nodoc
abstract class $DeleteNoteCopyWith<$Res> {
  factory $DeleteNoteCopyWith(
          DeleteNote value, $Res Function(DeleteNote) then) =
      _$DeleteNoteCopyWithImpl<$Res>;
  $Res call({Note note});

  $NoteCopyWith<$Res> get note;
}

/// @nodoc
class _$DeleteNoteCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements $DeleteNoteCopyWith<$Res> {
  _$DeleteNoteCopyWithImpl(DeleteNote _value, $Res Function(DeleteNote) _then)
      : super(_value, (v) => _then(v as DeleteNote));

  @override
  DeleteNote get _value => super._value as DeleteNote;

  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(DeleteNote(
      note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note,
    ));
  }

  @override
  $NoteCopyWith<$Res> get note {
    return $NoteCopyWith<$Res>(_value.note, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$DeleteNote implements DeleteNote {
  const _$DeleteNote(this.note);

  @override
  final Note note;

  @override
  String toString() {
    return 'NotesEvent.deleteNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteNote &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  $DeleteNoteCopyWith<DeleteNote> get copyWith =>
      _$DeleteNoteCopyWithImpl<DeleteNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder) changeOrder,
    required TResult Function() toggleOrderSection,
  }) {
    return deleteNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
  }) {
    return deleteNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ToggleOrderSection value) toggleOrderSection,
  }) {
    return deleteNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
  }) {
    return deleteNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (deleteNote != null) {
      return deleteNote(this);
    }
    return orElse();
  }
}

abstract class DeleteNote implements NotesEvent {
  const factory DeleteNote(Note note) = _$DeleteNote;

  Note get note;
  @JsonKey(ignore: true)
  $DeleteNoteCopyWith<DeleteNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestoreNoteCopyWith<$Res> {
  factory $RestoreNoteCopyWith(
          RestoreNote value, $Res Function(RestoreNote) then) =
      _$RestoreNoteCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestoreNoteCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements $RestoreNoteCopyWith<$Res> {
  _$RestoreNoteCopyWithImpl(
      RestoreNote _value, $Res Function(RestoreNote) _then)
      : super(_value, (v) => _then(v as RestoreNote));

  @override
  RestoreNote get _value => super._value as RestoreNote;
}

/// @nodoc

class _$RestoreNote implements RestoreNote {
  const _$RestoreNote();

  @override
  String toString() {
    return 'NotesEvent.restoreNote()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RestoreNote);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder) changeOrder,
    required TResult Function() toggleOrderSection,
  }) {
    return restoreNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
  }) {
    return restoreNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ToggleOrderSection value) toggleOrderSection,
  }) {
    return restoreNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
  }) {
    return restoreNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (restoreNote != null) {
      return restoreNote(this);
    }
    return orElse();
  }
}

abstract class RestoreNote implements NotesEvent {
  const factory RestoreNote() = _$RestoreNote;
}

/// @nodoc
abstract class $ChangeOrderCopyWith<$Res> {
  factory $ChangeOrderCopyWith(
          ChangeOrder value, $Res Function(ChangeOrder) then) =
      _$ChangeOrderCopyWithImpl<$Res>;
  $Res call({NoteOrder noteOrder});

  $NoteOrderCopyWith<$Res> get noteOrder;
}

/// @nodoc
class _$ChangeOrderCopyWithImpl<$Res> extends _$NotesEventCopyWithImpl<$Res>
    implements $ChangeOrderCopyWith<$Res> {
  _$ChangeOrderCopyWithImpl(
      ChangeOrder _value, $Res Function(ChangeOrder) _then)
      : super(_value, (v) => _then(v as ChangeOrder));

  @override
  ChangeOrder get _value => super._value as ChangeOrder;

  @override
  $Res call({
    Object? noteOrder = freezed,
  }) {
    return _then(ChangeOrder(
      noteOrder == freezed
          ? _value.noteOrder
          : noteOrder // ignore: cast_nullable_to_non_nullable
              as NoteOrder,
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

class _$ChangeOrder implements ChangeOrder {
  const _$ChangeOrder(this.noteOrder);

  @override
  final NoteOrder noteOrder;

  @override
  String toString() {
    return 'NotesEvent.changeOrder(noteOrder: $noteOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeOrder &&
            (identical(other.noteOrder, noteOrder) ||
                other.noteOrder == noteOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, noteOrder);

  @JsonKey(ignore: true)
  @override
  $ChangeOrderCopyWith<ChangeOrder> get copyWith =>
      _$ChangeOrderCopyWithImpl<ChangeOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder) changeOrder,
    required TResult Function() toggleOrderSection,
  }) {
    return changeOrder(noteOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
  }) {
    return changeOrder?.call(noteOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (changeOrder != null) {
      return changeOrder(noteOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ToggleOrderSection value) toggleOrderSection,
  }) {
    return changeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
  }) {
    return changeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (changeOrder != null) {
      return changeOrder(this);
    }
    return orElse();
  }
}

abstract class ChangeOrder implements NotesEvent {
  const factory ChangeOrder(NoteOrder noteOrder) = _$ChangeOrder;

  NoteOrder get noteOrder;
  @JsonKey(ignore: true)
  $ChangeOrderCopyWith<ChangeOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToggleOrderSectionCopyWith<$Res> {
  factory $ToggleOrderSectionCopyWith(
          ToggleOrderSection value, $Res Function(ToggleOrderSection) then) =
      _$ToggleOrderSectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ToggleOrderSectionCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res>
    implements $ToggleOrderSectionCopyWith<$Res> {
  _$ToggleOrderSectionCopyWithImpl(
      ToggleOrderSection _value, $Res Function(ToggleOrderSection) _then)
      : super(_value, (v) => _then(v as ToggleOrderSection));

  @override
  ToggleOrderSection get _value => super._value as ToggleOrderSection;
}

/// @nodoc

class _$ToggleOrderSection implements ToggleOrderSection {
  const _$ToggleOrderSection();

  @override
  String toString() {
    return 'NotesEvent.toggleOrderSection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ToggleOrderSection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadNotes,
    required TResult Function(Note note) deleteNote,
    required TResult Function() restoreNote,
    required TResult Function(NoteOrder noteOrder) changeOrder,
    required TResult Function() toggleOrderSection,
  }) {
    return toggleOrderSection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
  }) {
    return toggleOrderSection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadNotes,
    TResult Function(Note note)? deleteNote,
    TResult Function()? restoreNote,
    TResult Function(NoteOrder noteOrder)? changeOrder,
    TResult Function()? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (toggleOrderSection != null) {
      return toggleOrderSection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadNotes value) loadNotes,
    required TResult Function(DeleteNote value) deleteNote,
    required TResult Function(RestoreNote value) restoreNote,
    required TResult Function(ChangeOrder value) changeOrder,
    required TResult Function(ToggleOrderSection value) toggleOrderSection,
  }) {
    return toggleOrderSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
  }) {
    return toggleOrderSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadNotes value)? loadNotes,
    TResult Function(DeleteNote value)? deleteNote,
    TResult Function(RestoreNote value)? restoreNote,
    TResult Function(ChangeOrder value)? changeOrder,
    TResult Function(ToggleOrderSection value)? toggleOrderSection,
    required TResult orElse(),
  }) {
    if (toggleOrderSection != null) {
      return toggleOrderSection(this);
    }
    return orElse();
  }
}

abstract class ToggleOrderSection implements NotesEvent {
  const factory ToggleOrderSection() = _$ToggleOrderSection;
}
