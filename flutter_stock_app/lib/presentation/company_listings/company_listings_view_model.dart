import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_stock_app/domain/repository/stock_repository.dart';
import 'package:flutter_stock_app/presentation/company_listings/company_listings_action.dart';
import 'package:flutter_stock_app/presentation/company_listings/company_listings_state.dart';

class CompanyListingsViewModel with ChangeNotifier {
  final StockRepository _repository;

  CompanyListingsState _state = const CompanyListingsState();

  Timer? _debounce;

  CompanyListingsState get state => _state;

  CompanyListingsViewModel(this._repository);

  void onAction(CompanyListingsAction action) {
    action.when(
      refresh: () => _getCompanyListings(fetchFromRemote: true),
      onSearchQueryChange: (query) {
        _debounce?.cancel();
        _debounce = Timer(const Duration(milliseconds: 500), () {
          _getCompanyListings(query: query);
        });
      },
    );
  }

  Future _getCompanyListings({
    bool fetchFromRemote = false,
    String query = '',
  }) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _repository.getCompanyListings(fetchFromRemote, query);

    result.when(success: (listings) {
      _state = state.copyWith(companies: listings);
    }, error: (e) {
      print("remote error $e");
    });

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
