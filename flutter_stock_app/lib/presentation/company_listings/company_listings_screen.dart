import 'package:flutter_stock_app/presentation/company_listings/company_listings_action.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_stock_app/presentation/company_listings/company_listings_view_model.dart';

class CompanyListingsScreen extends StatelessWidget {
  const CompanyListingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CompanyListingsViewModel>();
    final state = viewModel.state;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (query) {
                  viewModel.onAction(
                      CompanyListingsAction.onSearchQueryChange(query));
                },
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary, width: 2),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  labelText: "검색...",
                  labelStyle:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
            Expanded(
                child: RefreshIndicator(
              onRefresh: () async {
                viewModel.onAction(const CompanyListingsAction.refresh());
              },
              child: ListView.builder(
                  itemCount: state.companies.length,
                  itemBuilder: (context, index) => Column(
                        children: [
                          ListTile(
                            title: Text(state.companies[index].name),
                            onTap: () {
                              // 상세 페이지로 이동 로직 구현
                            },
                          ),
                          Divider(
                            color: Theme.of(context).colorScheme.secondary,
                          )
                        ],
                      )),
            ))
          ],
        ),
      ),
    );
  }
}
