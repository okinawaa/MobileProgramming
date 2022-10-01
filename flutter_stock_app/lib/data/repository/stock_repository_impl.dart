import 'package:flutter_stock_app/data/source/local/stock_dao.dart';
import 'package:flutter_stock_app/data/source/remote/stock_api.dart';
import 'package:flutter_stock_app/domain/model/intraday_info.dart';
import 'package:flutter_stock_app/domain/model/company_listing.dart';
import 'package:flutter_stock_app/domain/model/company_info.dart';
import 'package:flutter_stock_app/domain/repository/stock_repository.dart';
import 'package:flutter_stock_app/util/result.dart';

class StockRepositoryImpl implements StockRepository {
  final StockApi _api;
  final StockDao _dao;

  StockRepositoryImpl(this._api, this._dao);

  @override
  Future<Result<CompanyInfo>> getCompanyInfo(String symbol) {
    // TODO: implement getCompanyInfo
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CompanyListing>>> getCompanyListings(
      bool fetchFromRemote, String query) {
    // TODO: implement getCompanyListings
    throw UnimplementedError();
  }

  @override
  Future<Result<List<IntradayInfo>>> getIntradayInfo(String symbol) {
    // TODO: implement getIntradayInfo
    throw UnimplementedError();
  }
}
