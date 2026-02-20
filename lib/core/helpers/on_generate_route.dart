import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/auth/login/presentation/pages/sign_in_page.dart';
import '../../features/auth/passwords/presentation/manager/cubits/reset_password/reset_password_cubit.dart';
import '../../features/auth/passwords/presentation/pages/new_passwrod_page.dart';
import '../../features/auth/passwords/presentation/pages/request_reset_password_page.dart';
import '../../features/auth/register/presentation/manager/cubits/verify_phone_number/verify_phone_number_cubit.dart';
import '../../features/auth/register/presentation/pages/verification_code_page.dart';
import '../../features/auth/register/presentation/pages/sign_up_page.dart';
import '../../features/auth/passwords/presentation/pages/verify_reset_password_code_page.dart';
import '../../features/auth/register/presentation/pages/verify_your_phone_number_page.dart';
import '../../features/main/home/presentation/pages/home_page.dart';
import '../../features/on_boarding/presentation/pages/on_boarding_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingPage.routeName:
      return CupertinoPageRoute(builder: (context) => OnBoardingPage());
    case SignUpPage.routeName:
      return CupertinoPageRoute(builder: (context) => SignUpPage());
    case SignInView.routeName:
      return CupertinoPageRoute(builder: (context) => SignInView());
    case ResetYourPasswordPage.routeName:
      return MaterialPageRoute(builder: (_) => const ResetYourPasswordPage());
    case NewPasswordPage.routeName:
      final cubit = settings.arguments as ResetPasswordCubit;
      return MaterialPageRoute(
        builder: (_) =>
            BlocProvider.value(value: cubit, child: const NewPasswordPage()),
      );

    case VerificationCodePage.routeName:
      final cubit = settings.arguments as VerifyPhoneNumberCubit;

      return MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: cubit,
          child: const VerificationCodePage(),
        ),
      );

    case VerifyYourPhoneNumberPage.routeName:
      return MaterialPageRoute(
        builder: (_) => const VerifyYourPhoneNumberPage(),
      );

    case VerifyResetPasswordCodePage.routeName:
      return MaterialPageRoute(
        builder: (_) => const VerifyResetPasswordCodePage(),
      );

    case HomePage.routeName:
      return MaterialPageRoute(builder: (_) => const HomePage());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
