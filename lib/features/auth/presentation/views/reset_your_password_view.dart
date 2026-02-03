import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/presentation/views/widgets/reset_your_password_view_body.dart';

import '../manager/cubits/reset_password/reset_password_cubit.dart';

class ResetYourPasswordView extends StatelessWidget {
  const ResetYourPasswordView({super.key});

  static const routeName = "reset_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => ResetPasswordCubit(),
          child: const ResetYourPasswordViewBody(),
        ),
      ),
    );
  }
}
