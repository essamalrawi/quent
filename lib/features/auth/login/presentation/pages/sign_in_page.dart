import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/login/data/repos/login_repo_impl.dart';
import 'package:quent/features/auth/login/presentation/pages/widgets/sign_in_page_bloc_consumer.dart';
import '../../../../../core/services/get_it_service.dart';
import '../manager/cubits/sign_in/sign_in_cubit.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routeName = "sign-in-view";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt.get<LoginRepoImpl>()),

      child: const Scaffold(body: SafeArea(child: SignInPageBlocConsumer())),
    );
  }
}
