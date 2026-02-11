import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/verify_reset_password_code_page_body.dart';
import '../../../../../core/cubit/otp_cubit/otp_cubit.dart';

class VerifyResetPasswordCodePage extends StatelessWidget {
  const VerifyResetPasswordCodePage({super.key});

  static const routeName = "verify-reset-password-code";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(),
      child: const Scaffold(
        body: SafeArea(child: VerifyResetPasswordCodePageBody()),
      ),
    );
  }
}
