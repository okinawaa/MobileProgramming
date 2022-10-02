// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WordAdapter extends TypeAdapter<_$_Word> {
  @override
  final int typeId = 1;

  @override
  _$_Word read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Word(
      id: fields[0] as int,
      engWord: fields[1] as String,
      korWord: fields[2] as String,
      correctCount: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Word obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.engWord)
      ..writeByte(2)
      ..write(obj.korWord)
      ..writeByte(3)
      ..write(obj.correctCount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Word _$$_WordFromJson(Map<String, dynamic> json) => _$_Word(
      id: json['id'] as int,
      engWord: json['engWord'] as String,
      korWord: json['korWord'] as String,
      correctCount: json['correctCount'] as int,
    );

Map<String, dynamic> _$$_WordToJson(_$_Word instance) => <String, dynamic>{
      'id': instance.id,
      'engWord': instance.engWord,
      'korWord': instance.korWord,
      'correctCount': instance.correctCount,
    };
