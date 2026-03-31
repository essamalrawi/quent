import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/generated/l10n.dart';

import '../../../../passwords/presentation/pages/request_reset_password_page.dart';
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
          S.of(context).remember_me,

          style: AppStyles.regular14(
            context,
          ).copyWith(letterSpacing: -0.14, color: const Color(0xFF7F7F7F)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ResetYourPasswordPage.routeName);
          },
          child: Text(
            S.of(context).forgot_password,
            style: AppStyles.regular14(
              context,
            ).copyWith(color: const Color(0xFF454545), letterSpacing: -0.14),
          ),
        ),
      ],
    );
  }
}
