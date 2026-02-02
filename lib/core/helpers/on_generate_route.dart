
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    //
    // case BookAppointmentView.routeName:
    //   return CupertinoPageRoute(builder: (context) => BookAppointmentView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
