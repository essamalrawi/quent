import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quent/core/utils/app_styles.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "have an account?",
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
                    Navigator.pop(context);
                  },
                text: "Sign In.",
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
