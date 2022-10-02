// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intraday_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IntradayInfoDto _$$_IntradayInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_IntradayInfoDto(
      timestamp: json['timestamp'] as String,
      close: (json['close'] as num).toDouble(),
    );

Map<String, dynamic> _$$_IntradayInfoDtoToJson(_$_IntradayInfoDto instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'close': instance.close,
    };
