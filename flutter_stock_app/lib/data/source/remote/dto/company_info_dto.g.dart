// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyInfoDto _$$_CompanyInfoDtoFromJson(Map<String, dynamic> json) =>
    _$_CompanyInfoDto(
      symbol: json['Symbol'] as String?,
      description: json['Description'] as String?,
      name: json['Name'] as String?,
      country: json['Country'] as String?,
      industry: json['Industry'] as String?,
    );

Map<String, dynamic> _$$_CompanyInfoDtoToJson(_$_CompanyInfoDto instance) =>
    <String, dynamic>{
      'Symbol': instance.symbol,
      'Description': instance.description,
      'Name': instance.name,
      'Country': instance.country,
      'Industry': instance.industry,
    };
