// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_listing_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CompanyListingEntityAdapter extends TypeAdapter<CompanyListingEntity> {
  @override
  final int typeId = 0;

  @override
  CompanyListingEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CompanyListingEntity(
      symbol: fields[0] as String,
      name: fields[1] as String,
      exchange: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, CompanyListingEntity obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.symbol)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.exchange);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompanyListingEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
