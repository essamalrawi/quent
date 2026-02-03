import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/presentation/views/widgets/verify_reset_password_code_view_body.dart';

import '../manager/cubits/otp_cubit/otp_cubit.dart';

class VerifyResetPasswordCodeView extends StatelessWidget {
  const VerifyResetPasswordCodeView({super.key});

  static const routeName = "verify-reset-password-code";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(),
      child: const Scaffold(
        body: SafeArea(child: VerifyResetPasswordCodeViewBody()),
      ),
    );
  }
}
