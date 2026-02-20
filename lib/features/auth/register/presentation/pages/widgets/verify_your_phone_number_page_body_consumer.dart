import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/register/presentation/pages/verification_code_page.dart';
import 'package:quent/features/auth/register/presentation/pages/widgets/verify_your_phone_number_page_body.dart';

import '../../manager/cubits/verify_phone_number/verify_phone_number_cubit.dart';

class VerifyYourPhoneNumberPageBodyConsumer extends StatelessWidget {
  const VerifyYourPhoneNumberPageBodyConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyPhoneNumberCubit, VerifyPhoneNumberState>(
      listener: (context, state) {
        if (state is VerifyPhoneNumberRequestSuccess) {
          Navigator.pushReplacementNamed(
            context,
            VerificationCodePage.routeName,
            arguments: context.read<VerifyPhoneNumberCubit>(),
          );
          Flushbar(
            title: "Verification Code",
            message:
                "Your code is: ${state.verifyPhoneEntity.code}. Please use it within 10 seconds.",
            duration: const Duration(seconds: 10),
            backgroundColor: const Color.fromARGB(255, 4, 192, 89),
            icon: const Icon(Icons.check_circle, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
          ).show(context);
        }
        if (state is VerifyPhoneNumberRequestFailure) {
          Flushbar(
            title: "Something Went Wrong",
            message: state.errorMessage,
            duration: const Duration(seconds: 5),
            backgroundColor: const Color.fromARGB(255, 192, 4, 4),
            // red tone
            icon: const Icon(Icons.error_outline, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
          ).show(context);
        }
      },

      builder: (context, state) {
        return const VerifyYourPhoneNumberPageBody();
      },
    );
  }
}
