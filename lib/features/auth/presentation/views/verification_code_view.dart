import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/presentation/views/widgets/verification_code_view_body.dart';

import '../manager/cubits/otp_cubit/otp_cubit.dart';
import '../manager/cubits/verify_phone_number/verify_phone_number_cubit.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  static const routeName = "verification_code";

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OtpCubit()),
        BlocProvider(create: (context) => VerifyPhoneNumberCubit()),
      ],

      child: const Scaffold(body: SafeArea(child: VerificationCodeViewBody())),
    );
  }
}
