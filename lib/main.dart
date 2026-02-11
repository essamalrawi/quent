import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/core/helpers/on_generate_route.dart';
import 'core/services/custom_bloc_observer.dart';
import 'core/services/get_it_service.dart';
import 'core/services/shared_preferences_singleton.dart';
import 'features/on_boarding/presentation/pages/on_boarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Prefs.init();
  setupGetIt();

  runApp(const QuentApp());
}

class QuentApp extends StatelessWidget {
  const QuentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffF8F8F8)),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: OnBoardingPage.routeName,
    );
  }
}
