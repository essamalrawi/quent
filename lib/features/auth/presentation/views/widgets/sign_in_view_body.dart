import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/features/auth/presentation/views/widgets/password_field.dart';
import 'package:quent/features/auth/presentation/views/widgets/social_login_button.dart';

import '../../../../../const/resource.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import 'custom_text_form_field.dart';
import '../../../../../core/utils/app_styles.dart';
import '../sign_up_view.dart';
import 'dont_have_an_account.dart';
import 'forgot_password.dart';
import 'or_divider.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String email, password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  SvgPicture.asset(R.ASSETS_IMAGES_ICON_AUTH_VIEW_LOGO_SVG),
                  const SizedBox(height: 50),
                  Text(
                    'Welcome Back\nReady to hit the road.',
                    style: AppStyles.semibold30(context),
                  ),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    obscureText: false,
                    hintText: 'Email/Phone Number',
                    textInputType: TextInputType.emailAddress,
                    onSaved: (value) {
                      email = value!;
                    },
                  ),
                  const SizedBox(height: 18),
                  PasswordField(
                    onSaved: (value) {
                      password = value!;
                    },
                  ),
                  const SizedBox(height: 28),
                  const ForgotPassword(),
                  const SizedBox(height: 28),
                  CustomButton(text: "Login"),
                  const SizedBox(height: 18),
                  CustomButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignUpView.routeName);
                    },
                    fontColor: const Color(0xFF21292B),
                    backgroundColor: const Color(0xFFEDEDED),
                    text: "Sign up",
                  ),
                  const SizedBox(height: 28),
                  const OrDivider(),
                  const SizedBox(height: 28),
                  SocialLoginButton(
                    text: "Apple pay",
                    imagePath: R.ASSETS_IMAGES_ICON_APPLE_LOGO_SVG,
                  ),
                  const SizedBox(height: 18),
                  const SocialLoginButton(
                    text: "Google pay",
                    imagePath: R.ASSETS_IMAGES_ICON_GOOGLE_LOGO_SVG,
                  ),
                  const SizedBox(height: 57),
                  const DontHaveAccount(),
                  const SizedBox(height: 57),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
