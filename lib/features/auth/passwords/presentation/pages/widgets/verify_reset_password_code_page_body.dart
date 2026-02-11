import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/core/resources/app_styles.dart';
import '../../../../../../core/components/buttons/custom_button.dart';
import '../../../../../../generated/assets.gen.dart';
import '../../manager/cubits/reset_password/reset_password_cubit.dart';
import '../../../../../../core/components/forms/otp_form.dart';

class VerifyResetPasswordCodePageBody extends StatefulWidget {
  const VerifyResetPasswordCodePageBody({super.key});

  @override
  State<VerifyResetPasswordCodePageBody> createState() =>
      _VerifyResetPasswordCodePageBodyState();
}

class _VerifyResetPasswordCodePageBodyState
    extends State<VerifyResetPasswordCodePageBody> {
  late String correctCode = context
      .read<ResetPasswordCubit>()
      .requestPasswordResetCodeEntity
      .code;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [SvgPicture.asset(Assets.images.icon.authViewLogo)],
                ),
                const Spacer(),
                Text(
                  'Enter verification code',
                  textAlign: TextAlign.center,
                  style: AppStyles.semibold30(
                    context,
                  ).copyWith(color: const Color(0xFF232323)),
                ),
                const SizedBox(height: 16),
                Text(
                  'We have sent a code to your phone',
                  style: AppStyles.regular14(
                    context,
                  ).copyWith(color: const Color(0xFF7F7F7F)),
                ),
                const SizedBox(height: 40),
                const OtpForm(),
                const SizedBox(height: 24),
                CustomButton(
                  text: "Continue",
                  onPressed: () {
                    // final userCode = context.read<OtpCubit>().code;
                    // log(userCode);
                    // if (correctCode == userCode) {
                    //   Navigator.pushReplacementNamed(
                    //     context,
                    //     NewPasswordView.routeName,
                    //     arguments: context.read<ResetPasswordCubit>(),
                    //   );
                    // } else if (!(correctCode == userCode)) {
                    //   if (userCode.length > 3) {
                    //     Flushbar(
                    //       title: "Error",
                    //       message:
                    //           "The code you entered is incorrect. Please try again.",
                    //       duration: const Duration(seconds: 3),
                    //       backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                    //       icon: const Icon(Icons.error, color: Colors.white),
                    //       flushbarPosition: FlushbarPosition.TOP,
                    //     ).show(context);
                    //   } else {
                    //     Flushbar(
                    //       title: "Input Required",
                    //       message:
                    //           "Please fill in the required field before submitting.",
                    //       duration: const Duration(seconds: 10),
                    //       backgroundColor: const Color.fromARGB(
                    //         255,
                    //         255,
                    //         165,
                    //         0,
                    //       ),
                    //       icon: const Icon(Icons.warning, color: Colors.white),
                    //       flushbarPosition: FlushbarPosition.TOP,
                    //     ).show(context);
                    //   }

                    //   Prefs.setString(kAuthCode, "");
                    // }
                  },
                ),
                const Spacer(flex: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
