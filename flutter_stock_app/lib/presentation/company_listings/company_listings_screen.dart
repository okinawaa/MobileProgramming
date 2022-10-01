import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_stock_app/presentation/company_listings/company_listings_view_model.dart';

class CompanyListingsScreen extends StatelessWidget {
  const CompanyListingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CompanyListingsViewModel>();
    return Container(
      child: Text("sda"),
    );
  }
}
