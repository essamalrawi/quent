import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/cubit/otp_cubit/otp_cubit.dart';
import '../manager/cubits/verify_phone_number/verify_phone_number_cubit.dart';
import 'widgets/verification_code_page_body.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  static const routeName = "verification_code";

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OtpCubit()),
        BlocProvider(create: (context) => VerifyPhoneNumberCubit()),
      ],

      child: const Scaffold(body: SafeArea(child: VerificationCodePageBody())),
    );
  }
}
