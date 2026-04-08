import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quent/core/helpers/on_generate_route.dart';
import 'package:quent/core/utils/api_service.dart';
import 'package:quent/features/main/home/data/data_sources/home_remote_data_source.dart';
import 'package:quent/features/main/search/data/data_sources/search_remote_data_source.dart';
import 'package:quent/features/main/startup/presentation/startup_page.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';
import 'package:quent/generated/l10n.dart';
import 'core/services/custom_bloc_observer.dart';
import 'core/services/get_it_service.dart';
import 'core/services/shared_preferences_singleton.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),
  );
  Bloc.observer = CustomBlocObserver();
  await Prefs.init();
  setupGetIt();

  SearchRemoteDataSourceImpl k = SearchRemoteDataSourceImpl(ApiService(Dio()));
  List<CarEntity> data = await k.searchForCars(
    brandId: "1",
    carType: "Regular",
  );
  log(data[0].name);
  log(data[1].name);

  runApp(const QuentApp());
}

class QuentApp extends StatelessWidget {
  const QuentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffF8F8F8)),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: StartupPage.routeName,
    );
  }
}
