import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/core/utils/app_styles.dart';

import '../../../../../const/resource.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../manager/cubits/verify_phone_number/verify_phone_number_cubit.dart';
import '../sign_up_view.dart';
import '../verification_code_view.dart';
import 'custom_text_form_field.dart';

class ResetYourPasswordViewBody extends StatefulWidget {
  const ResetYourPasswordViewBody({super.key});

  @override
  State<ResetYourPasswordViewBody> createState() =>
      _ResetYourPasswordViewBodyState();
}

class _ResetYourPasswordViewBodyState extends State<ResetYourPasswordViewBody> {
  late String email;
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const SizedBox(height: 20),
                SvgPicture.asset(R.ASSETS_IMAGES_ICON_AUTH_VIEW_LOGO_SVG),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Spacer(flex: 5),
                  Text(
                    'Reset your password',
                    textAlign: TextAlign.center,
                    style: AppStyles.semibold30(
                      context,
                    ).copyWith(color: const Color(0xFF232323)),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    textAlign: TextAlign.center,
                    'Enter the email address associated with your account and we\'ll send you a link to reset your password.',
                    style: AppStyles.regular14(
                      context,
                    ).copyWith(color: const Color(0xFF7F7F7F)),
                  ),
                  const SizedBox(height: 40),

                  const SizedBox(height: 18),
                  CustomTextFormField(
                    onSaved: (value) {
                      email = value!;
                    },
                    hintText: "Email",
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  const SizedBox(height: 28),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                        context,
                        VerificationCodeView.routeName,
                      );

                      // if (_formKey.currentState!.validate()) {
                      //   _formKey.currentState!.save();
                      //   context
                      //       .read<ResetPasswordCubit>()
                      //       .requestPasswordResetCode(email: email);
                      // } else {
                      //   setState(() {
                      //     autoValidateMode = AutovalidateMode.always;
                      //   });
                      // }
                    },
                    text: "Continue",
                  ),
                  const SizedBox(height: 28),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Return to sing in',
                      textAlign: TextAlign.center,
                      style: AppStyles.regular14(context).copyWith(
                        letterSpacing: -0.14,
                        color: const Color(0xFF454545),
                      ),
                    ),
                  ),
                  const Spacer(flex: 5),

                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Create a',
                          style: AppStyles.regular14(context).copyWith(
                            letterSpacing: -0.14,
                            color: const Color(0xFF7F7F7F),
                          ),
                        ),
                        const TextSpan(text: ' '),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushReplacementNamed(
                                context,
                                SignUpView.routeName,
                              );
                            },
                          text: 'New account ',
                          style: AppStyles.regular14(context).copyWith(
                            letterSpacing: -0.14,
                            color: const Color(0xFF454545),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
