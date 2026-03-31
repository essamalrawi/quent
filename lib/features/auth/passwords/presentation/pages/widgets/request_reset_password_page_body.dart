import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/generated/l10n.dart';
import '../../../../../../core/components/buttons/custom_button.dart';
import '../../../../../../generated/assets.gen.dart';
import '../../../../../../core/components/forms/custom_text_form_field.dart';
import '../../../../register/presentation/pages/sign_up_page.dart';
import '../../manager/cubits/reset_password/reset_password_cubit.dart';

class RequestResetPasswordPageBody extends StatefulWidget {
  const RequestResetPasswordPageBody({super.key});

  @override
  State<RequestResetPasswordPageBody> createState() =>
      _RequestResetPasswordPageBodyState();
}

class _RequestResetPasswordPageBodyState
    extends State<RequestResetPasswordPageBody> {
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
                SvgPicture.asset(Assets.images.icon.authViewLogo),
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
                    S.of(context).reset_your_password,
                    textAlign: TextAlign.center,
                    style: AppStyles.semibold30(
                      context,
                    ).copyWith(color: const Color(0xFF232323)),
                  ),
                  const SizedBox(height: 16),

                  Text(
                    textAlign: TextAlign.center,
                    S.of(context).reset_password_desc,
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
                    hintText: S.of(context).reset_password_email_hint,
                    textInputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  const SizedBox(height: 28),
                  CustomButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        context
                            .read<ResetPasswordCubit>()
                            .requestPasswordResetCode(email: email);
                      } else {
                        setState(() {
                          autoValidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                    text: S.of(context).reset_password_button_title,
                  ),
                  const SizedBox(height: 28),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      S.of(context).return_to_login,
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
                          text: S.of(context).create_account_title,
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
                                SignUpPage.routeName,
                              );
                            },
                          text: S.of(context).create_account_title_bold,
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
