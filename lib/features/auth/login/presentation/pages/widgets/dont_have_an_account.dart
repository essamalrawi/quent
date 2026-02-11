import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';
import '../../../../register/presentation/pages/sign_up_page.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Don't have an account?",
                style: AppStyles.regular14(
                  context,
                ).copyWith(color: const Color(0xFF7F7F7F)),
              ),
              TextSpan(
                text: " ",
                style: AppStyles.regular14(
                  context,
                ).copyWith(color: const Color(0xFF7F7F7F)),
              ),

              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, SignUpPage.routeName);
                  },
                text: "Sign Up.",
                style: AppStyles.regular14(
                  context,
                ).copyWith(color: const Color(0xFF454545)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
