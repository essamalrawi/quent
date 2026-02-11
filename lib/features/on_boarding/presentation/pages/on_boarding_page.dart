import 'package:flutter/material.dart';
import 'package:quent/features/on_boarding/presentation/pages/widgets/on_boarding_page_body.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  static const routeName = "on-boarding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: OnBoardingPageBody());
  }
}
