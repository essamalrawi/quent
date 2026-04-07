import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/login/domain/use_cases/sign_in_use_case.dart';
import 'package:quent/features/auth/login/presentation/pages/widgets/sign_in_page_bloc_consumer.dart';
import '../../../../../core/services/get_it_service.dart';
import '../manager/cubits/sign_in/sign_in_cubit.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  static const routeName = "sign-in-view";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<SignInUseCase>()),

      child: const Scaffold(body: SafeArea(child: SignInPageBlocConsumer())),
    );
  }
}
