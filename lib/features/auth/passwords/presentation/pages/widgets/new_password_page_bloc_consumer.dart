import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/passwords/presentation/pages/widgets/new_password_page_body.dart';
import '../../manager/cubits/reset_password/reset_password_cubit.dart';

class NewPasswordPageBlocConsumer extends StatelessWidget {
  const NewPasswordPageBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      listener: (context, state) {
        if (state is ResetPasswordSuccess) {
          Navigator.popUntil(context, (route) => route.isFirst);
          Flushbar(
            title: "Password Changed",
            message: "Your password has been updated successfully.",
            duration: const Duration(seconds: 5),
            backgroundColor: const Color.fromARGB(255, 4, 192, 89),
            icon: const Icon(Icons.lock_open, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
          ).show(context);
        }
      },
      builder: (context, state) {
        return const NewPasswordPageBody();
      },
    );
  }
}
