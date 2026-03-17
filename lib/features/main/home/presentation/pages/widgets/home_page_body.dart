import 'package:flutter/material.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/home_app_bar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(children: [HomeAppBar()]),
    );
  }
}
