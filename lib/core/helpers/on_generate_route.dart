import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/auth/presentation/views/sign_in_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.routeName:
      return CupertinoPageRoute(builder: (context) => OnBoardingView());
    case SignUpView.routeName:
      return CupertinoPageRoute(builder: (context) => SignUpView());
    case SignInView.routeName:
      return CupertinoPageRoute(builder: (context) => SignInView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
