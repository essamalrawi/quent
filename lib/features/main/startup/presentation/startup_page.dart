import 'package:flutter/material.dart';
import 'package:quent/core/constants/auth_cached_keys.dart';
import 'package:quent/core/constants/prefs_keys.dart';
import 'package:quent/core/services/shared_preferences_singleton.dart';
import 'package:quent/features/auth/login/presentation/pages/sign_in_page.dart';
import 'package:quent/features/main/main/presentation/main_page.dart';
import 'package:quent/features/on_boarding/presentation/pages/on_boarding_page.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({super.key});
  static const routeName = "startup-view";

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  void excuteNaviagtion() {
    bool isOnBoardingPageSeen = Prefs.getBool(kIsOnBoardingPageSeen);
    Future.delayed(const Duration(milliseconds: 300), () {
      if (isOnBoardingPageSeen) {
        var token = Prefs.getString(kAccessToken);
        var isLoggedIn = token != null && token.isNotEmpty;
        if (isLoggedIn) {
          Navigator.pushReplacementNamed(context, MainPage.routeName);
        } else {
          Navigator.pushReplacementNamed(context, SignInPage.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingPage.routeName);
      }
    });
  }
}
