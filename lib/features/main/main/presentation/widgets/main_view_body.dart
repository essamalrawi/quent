import 'package:flutter/material.dart';
import 'package:quent/features/main/home/presentation/pages/home_page.dart';
import 'package:quent/features/main/search/presentation/search_page.dart';

class MainPageBody extends StatelessWidget {
  const MainPageBody({super.key, required this.currentViewIndex});
  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: [const HomePage(), SearchPage()],
    );
  }
}
