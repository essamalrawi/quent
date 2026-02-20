import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/register/presentation/pages/widgets/verification_code_page_body.dart';

import '../../../../../../core/cubit/otp_cubit/otp_cubit.dart';
import '../../../../../main/home/presentation/pages/home_page.dart';
import '../../manager/cubits/verify_phone_number/verify_phone_number_cubit.dart';

class VerificationCodePageBodyBlocConsumer extends StatelessWidget {
  const VerificationCodePageBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerifyPhoneNumberCubit, VerifyPhoneNumberState>(
      listener: (context, state) {
        if (state is VerifyPhoneNumberSuccess) {
          Navigator.pushReplacementNamed(context, HomePage.routeName);
        }

        if (state is VerifyPhoneNumberRequestFailure) {
          Flushbar(
            title: "Error",
            message: state.errorMessage,
            duration: const Duration(seconds: 3),
            backgroundColor: Colors.redAccent,
            icon: const Icon(Icons.error, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
          ).show(context);
        }
        if (state is VerifyPhoneNumberFailure) {
          Flushbar(
            title: "Error",
            message: state.errorMessage,
            duration: const Duration(seconds: 3),
            backgroundColor: Colors.redAccent,
            icon: const Icon(Icons.error, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
          ).show(context);

          context.read<OtpCubit>().emitOptClear();
        }
      },

      builder: (context, state) {
        return const VerificationCodePageBody();
      },
    );
  }
}
