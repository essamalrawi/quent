import 'package:flutter/material.dart';
import 'package:quent/features/auth/login/presentation/pages/widgets/sign_in_page_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routeName = "sign-in-view";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: SignInViewBody()));
  }
}
