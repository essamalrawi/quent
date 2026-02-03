import 'package:flutter/material.dart';
import 'package:quent/core/utils/app_styles.dart';

import '../reset_your_password_view.dart';
import 'custom_check_box.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          isChecked: isTermsAccepted,
          onChecked: (value) {
            isTermsAccepted = value;
            // Prefs.setBool(kRememberMe, value);
            setState(() {});
          },
        ),
        const SizedBox(width: 10),
        Text(
          'Remember Me',

          style: AppStyles.regular14(
            context,
          ).copyWith(letterSpacing: -0.14, color: const Color(0xFF7F7F7F)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ResetYourPasswordView.routeName);
          },
          child: Text(
            'Forgot Password',
            style: AppStyles.regular14(
              context,
            ).copyWith(color: const Color(0xFF454545), letterSpacing: -0.14),
          ),
        ),
      ],
    );
  }
}
