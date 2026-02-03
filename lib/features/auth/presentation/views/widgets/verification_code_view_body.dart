import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/core/utils/app_styles.dart';

import '../../../../../const/resource.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../manager/cubits/otp_cubit/otp_cubit.dart';
import '../../manager/cubits/verify_phone_number/verify_phone_number_cubit.dart';
import 'otp_form.dart';

class VerificationCodeViewBody extends StatelessWidget {
  const VerificationCodeViewBody({super.key});

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
                  children: [
                    SvgPicture.asset(R.ASSETS_IMAGES_ICON_AUTH_VIEW_LOGO_SVG),
                  ],
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
                  'We have send a Code to : +100******00',
                  style: AppStyles.regular14(
                    context,
                  ).copyWith(color: const Color(0xFF7F7F7F)),
                ),
                const SizedBox(height: 40),
                const OtpForm(),
                const SizedBox(height: 24),
                CustomButton(
                  onPressed: () {
                    String code = context.read<OtpCubit>().code;

                    // log(
                    //   "The code is $code and verifyToken is ${Prefs.getString(kverifyToken)} \n ${Prefs.getString(kaccessToken)}",
                    // );

                    // context.read<VerifyPhoneNumberCubit>().verifyPhoneNumber(
                    //   code: code,
                    //   verifyCode: Prefs.getString(kAuthverifyToken),
                    //   accessToken: Prefs.getString(kAccessToken),
                    // );
                  },

                  text: "Continue",
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
