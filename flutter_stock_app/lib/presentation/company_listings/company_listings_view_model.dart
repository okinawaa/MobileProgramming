import 'package:flutter/material.dart';
import 'package:flutter_stock_app/domain/repository/stock_repository.dart';

class CompanyListingsViewModel with ChangeNotifier {
  final StockRepository _repository;

  CompanyListingsViewModel(this._repository);
}
