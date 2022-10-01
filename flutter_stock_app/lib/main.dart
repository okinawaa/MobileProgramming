import 'package:flutter/material.dart';
import 'package:flutter_stock_app/data/repository/stock_repository_impl.dart';
import 'package:flutter_stock_app/data/source/local/company_listing_entity.dart';
import 'package:flutter_stock_app/data/source/local/stock_dao.dart';
import 'package:flutter_stock_app/data/source/remote/stock_api.dart';
import 'package:flutter_stock_app/domain/repository/stock_repository.dart';
import 'package:flutter_stock_app/presentation/company_listings/company_listings_screen.dart';
import 'package:flutter_stock_app/presentation/company_listings/company_listings_view_model.dart';
import 'package:flutter_stock_app/util/color_schemes.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CompanyListingEntityAdapter());

  // 데이터 통신
  final repository = StockRepositoryImpl(StockApi(), StockDao());

  GetIt.instance.registerSingleton<StockRepository>(repository);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => CompanyListingsViewModel(repository))
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chanhyuk Stock App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: lightColorScheme,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
      themeMode: ThemeMode.system,
      home: const CompanyListingsScreen(),
    );
  }
}
