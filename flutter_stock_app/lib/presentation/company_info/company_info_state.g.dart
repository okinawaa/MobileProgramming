// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyInfoState _$$_CompanyInfoStateFromJson(Map<String, dynamic> json) =>
    _$_CompanyInfoState(
      companyInfo: json['companyInfo'] == null
          ? null
          : CompanyInfo.fromJson(json['companyInfo'] as Map<String, dynamic>),
      isLoading: json['isLoading'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String?,
      stockInfos: (json['stockInfos'] as List<dynamic>?)
              ?.map((e) => IntradayInfo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CompanyInfoStateToJson(_$_CompanyInfoState instance) =>
    <String, dynamic>{
      'companyInfo': instance.companyInfo,
      'isLoading': instance.isLoading,
      'errorMessage': instance.errorMessage,
      'stockInfos': instance.stockInfos,
    };
