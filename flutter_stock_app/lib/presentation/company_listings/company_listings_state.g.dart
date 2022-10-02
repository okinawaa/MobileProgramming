// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_listings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyListingsState _$$_CompanyListingsStateFromJson(
        Map<String, dynamic> json) =>
    _$_CompanyListingsState(
      companies: (json['companies'] as List<dynamic>?)
              ?.map((e) => CompanyListing.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      isRefreshing: json['isRefreshing'] as bool? ?? false,
      searchQuery: json['searchQuery'] as String? ?? '',
    );

Map<String, dynamic> _$$_CompanyListingsStateToJson(
        _$_CompanyListingsState instance) =>
    <String, dynamic>{
      'companies': instance.companies,
      'isLoading': instance.isLoading,
      'isRefreshing': instance.isRefreshing,
      'searchQuery': instance.searchQuery,
    };
