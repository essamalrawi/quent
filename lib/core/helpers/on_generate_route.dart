
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/on_boarding/presentation/views/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {

    case OnBoardingView.routeName:
      return CupertinoPageRoute(builder: (context) => OnBoardingView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
