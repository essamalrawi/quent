import 'package:flutter/material.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomePageBody());
  }
}
