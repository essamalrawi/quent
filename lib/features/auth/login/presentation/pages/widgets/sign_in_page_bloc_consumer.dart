import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:quent/features/auth/login/presentation/manager/cubits/sign_in/sign_in_cubit.dart';
import 'package:quent/features/auth/login/presentation/pages/widgets/sign_in_page_body.dart';

import '../../../../../main/home/presentation/pages/home_page.dart';

class SignInPageBlocConsumer extends StatelessWidget {
  const SignInPageBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.pushReplacementNamed(context, HomePage.routeName);
        }

        if (state is SignInFailure) {
          Flushbar(
            title: "Error",
            message: state.errorMessage,
            duration: const Duration(seconds: 3),
            backgroundColor: Colors.redAccent,
            icon: const Icon(Icons.error, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
          ).show(context);
        }
      },

      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignInLoading ? true : false,
          child: const SignInPageBody(),
        );
      },
    );
  }
}
