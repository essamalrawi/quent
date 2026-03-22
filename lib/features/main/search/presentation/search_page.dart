import 'package:flutter/material.dart';
import 'package:quent/features/main/search/presentation/widgets/search_page_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  static const routeName = "search-page";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBody: true,
      body: SafeArea(child: SearchPageBody()),
    );
  }
}
