import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/core/resources/app_styles.dart';
import '../../../../../../core/components/buttons/custom_button.dart';
import '../../../../../../core/components/forms/password_field.dart';
import '../../../../../../generated/assets.gen.dart';
import '../../manager/cubits/reset_password/reset_password_cubit.dart';

class NewPasswordPageBody extends StatefulWidget {
  const NewPasswordPageBody({super.key});

  @override
  State<NewPasswordPageBody> createState() => _NewPasswordPageBodyState();
}

class _NewPasswordPageBodyState extends State<NewPasswordPageBody> {
  String password = "";
  String confirmPassword = "";
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset(Assets.images.icon.authViewLogo),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    'Enter new password',
                    textAlign: TextAlign.center,
                    style: AppStyles.semibold30(
                      context,
                    ).copyWith(color: const Color(0xFF232323)),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Please make sure both passwords match',
                    style: AppStyles.regular14(
                      context,
                    ).copyWith(color: const Color(0xFF7F7F7F)),
                  ),
                  const SizedBox(height: 40),
                  PasswordField(
                    onSaved: (value) {
                      password = value!;
                    },
                  ),
                  const SizedBox(height: 18),
                  PasswordField(
                    onSaved: (value) {
                      confirmPassword = value!;
                    },
                    hintText: "Confirm password",
                  ),
                  const SizedBox(height: 24),
                  CustomButton(
                    text: "Continue",
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        if (password == confirmPassword) {
                          var data = context
                              .read<ResetPasswordCubit>()
                              .forgotPasswordEntity;

                          // log(
                          //   "${data.code} ${data.resetToken} $password $confirmPassword",
                          // );

                          context
                              .read<ResetPasswordCubit>()
                              .resetPasswordResetCode(
                                resetToken: data!.resetToken,
                                code: data.code,
                                password: password,
                                confirmPassword: confirmPassword,
                              );
                        } else {
                          setState(() {
                            autoValidateMode = AutovalidateMode.always;
                          });
                        }
                      } else {
                        setState(() {
                          autoValidateMode = AutovalidateMode.always;
                        });
                      }
                    },
                  ),
                  const Spacer(flex: 3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
