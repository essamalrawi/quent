import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/passwords/domain/use_cases/forgot_password_use_case.dart';
import 'package:quent/features/auth/passwords/domain/use_cases/reset_password_use_case.dart';
import 'package:quent/features/auth/passwords/presentation/manager/cubits/reset_password/reset_password_cubit.dart';
import 'package:quent/features/auth/passwords/presentation/pages/widgets/request_reset_password_page_bloc_consumer.dart';
import '../../../../../core/services/get_it_service.dart';

class ResetYourPasswordPage extends StatelessWidget {
  const ResetYourPasswordPage({super.key});

  static const routeName = "reset_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => ResetPasswordCubit(
            getIt.get<ForgotPasswordUseCase>(),
            getIt.get<ResetPasswordUseCase>(),
          ),
          child: const RequestResetPasswordPageBlocConsumer(),
        ),
      ),
    );
  }
}
