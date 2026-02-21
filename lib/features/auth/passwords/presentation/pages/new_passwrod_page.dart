import 'package:flutter/material.dart';
import 'package:quent/features/auth/passwords/presentation/pages/widgets/new_password_page_bloc_consumer.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  static const routeName = "new_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const NewPasswordPageBlocConsumer()));
  }
}
