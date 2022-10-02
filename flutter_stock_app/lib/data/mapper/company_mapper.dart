import 'package:flutter_stock_app/data/source/local/company_listing_entity.dart';
import 'package:flutter_stock_app/data/source/remote/dto/company_info_dto.dart';
import 'package:flutter_stock_app/domain/model/company_info.dart';
import 'package:flutter_stock_app/domain/model/company_listing.dart';

// Extension method는 특정 타입에 대해 메소드를 만들어주기 때문에, 해당 타입에서 자주 호출하게 될 메소드가 있을 때 이를 Extension method로 만들면 좋다. 예를 들어 List<int> 타입에 대해서 리스트 전체의 합을 구하는 경우가 많다고 생각해보자

extension ToCompanyListing on CompanyListingEntity {
  CompanyListing toCompanyListing() {
    return CompanyListing(
      symbol: symbol,
      name: name,
      exchange: exchange,
    );
  }
}

extension ToCompanyListingEntity on CompanyListing {
  CompanyListingEntity toCompanyListingEntity() {
    return CompanyListingEntity(
      symbol: symbol,
      name: name,
      exchange: exchange,
    );
  }
}

extension ToCompanyInfo on CompanyInfoDto {
  CompanyInfo toCompanyInfo() {
    return CompanyInfo(
      symbol: symbol ?? '',
      description: description ?? '',
      name: name ?? '',
      country: country ?? '',
      industry: industry ?? '',
    );
  }
}
