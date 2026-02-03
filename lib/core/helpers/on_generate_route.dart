import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/presentation/manager/cubits/reset_password/reset_password_cubit.dart';
import '../../features/auth/presentation/manager/cubits/verify_phone_number/verify_phone_number_cubit.dart';
import '../../features/auth/presentation/views/new_passwrod_view.dart';
import '../../features/auth/presentation/views/reset_your_password_view.dart';
import '../../features/auth/presentation/views/sign_in_view.dart';
import '../../features/auth/presentation/views/sign_up_view.dart';
import '../../features/auth/presentation/views/verification_code_view.dart';
import '../../features/auth/presentation/views/verify_reset_password_code_view.dart';
import '../../features/auth/presentation/views/verify_your_phone_number_view.dart';
import '../../features/on_boarding/presentation/views/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingView.routeName:
      return CupertinoPageRoute(builder: (context) => OnBoardingView());
    case SignUpView.routeName:
      return CupertinoPageRoute(builder: (context) => SignUpView());
    case SignInView.routeName:
      return CupertinoPageRoute(builder: (context) => SignInView());
    case ResetYourPasswordView.routeName:
      return MaterialPageRoute(builder: (_) => const ResetYourPasswordView());
    case NewPasswordView.routeName:
      final cubit = settings.arguments as ResetPasswordCubit;
      return MaterialPageRoute(
        builder: (_) =>
            BlocProvider.value(value: cubit, child: const NewPasswordView()),
      );

    case VerificationCodeView.routeName:
      return MaterialPageRoute(builder: (_) => const VerificationCodeView());
      
    case VerifyYourPhoneNumberView.routeName:
      return MaterialPageRoute(
        builder: (_) => const VerifyYourPhoneNumberView(),
      );

    case VerifyResetPasswordCodeView.routeName:
      final cubit = settings.arguments as ResetPasswordCubit;
      return MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: cubit,
          child: const VerifyResetPasswordCodeView(),
        ),
      );

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
