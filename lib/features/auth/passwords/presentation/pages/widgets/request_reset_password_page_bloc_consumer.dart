import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:quent/features/auth/passwords/presentation/pages/widgets/request_reset_password_page_body.dart';

import '../../manager/cubits/reset_password/reset_password_cubit.dart';
import '../verify_reset_password_code_page.dart';

class RequestResetPasswordPageBlocConsumer extends StatelessWidget {
  const RequestResetPasswordPageBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is ResetPasswordLoading ? true : false,
          child: const RequestResetPasswordPageBody(),
        );
      },
      listener: (context, state) {
        if (state is ResetPasswordRequestSuccess) {
          print("Forgot Cubit: ${context.read<ResetPasswordCubit>().hashCode}");
          Navigator.pushNamed(
            context,
            VerifyResetPasswordCodePage.routeName,
            arguments: context.read<ResetPasswordCubit>(),
          );

          Flushbar(
            title: "Verification Code",
            message:
                "Your code is: ${state.forgotPasswordEntity.code}. Please use it within 10 seconds.",
            duration: const Duration(seconds: 10),
            backgroundColor: const Color.fromARGB(255, 4, 192, 89),
            icon: const Icon(Icons.check_circle, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
          ).show(context);
        }

        if (state is ResetPasswordFailure) {
          context.read<ResetPasswordCubit>().code = "";

          Flushbar(
            title: "Error",
            message: state.errorMessage,
            duration: const Duration(seconds: 3),
            backgroundColor: Colors.redAccent,
            icon: const Icon(Icons.error, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
          ).show(context);
        }
      },
    );
  }
}
