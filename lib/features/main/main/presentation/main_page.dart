import 'package:flutter/material.dart';
import 'package:quent/features/main/main/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:quent/features/main/main/presentation/widgets/main_view_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  static const routeName = 'main-page';

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (index) {
          currentViewIndex = index;
          setState(() {});
        },
      ),
      body: MainPageBody(currentViewIndex: currentViewIndex),
    );
  }
}
