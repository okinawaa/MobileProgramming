// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intraday_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IntradayInfo _$$_IntradayInfoFromJson(Map<String, dynamic> json) =>
    _$_IntradayInfo(
      date: DateTime.parse(json['date'] as String),
      close: (json['close'] as num).toDouble(),
    );

Map<String, dynamic> _$$_IntradayInfoToJson(_$_IntradayInfo instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'close': instance.close,
    };
