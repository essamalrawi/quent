import 'package:flutter/material.dart';
import 'package:quent/core/helpers/on_generate_route.dart';
import 'package:quent/features/on_boarding/presentation/views/on_boarding_view.dart';

void main() {
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
      initialRoute: OnBoardingView.routeName,
    );
  }
}
