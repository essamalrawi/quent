import 'package:flutter/material.dart';
import 'package:quent/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle semibold40(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 40),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semibold30(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 30),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle regular16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 400;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
