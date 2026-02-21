import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/passwords/presentation/pages/widgets/verify_reset_password_code_page_bloc_consumer.dart';
import '../../../../../core/services/get_it_service.dart';
import '../../data/repos/password_repo_impl.dart';
import '../manager/cubits/reset_password/reset_password_cubit.dart';
import '../../../../../core/cubit/otp_cubit/otp_cubit.dart';

class VerifyResetPasswordCodePage extends StatefulWidget {
  const VerifyResetPasswordCodePage({super.key});

  static const routeName = "verify-reset-password-code";

  @override
  State<VerifyResetPasswordCodePage> createState() =>
      _VerifyResetPasswordCodePageState();
}

class _VerifyResetPasswordCodePageState
    extends State<VerifyResetPasswordCodePage> {
  @override
  void initState() {
    print("Verify Cubit: ${context.read<ResetPasswordCubit>().hashCode}");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => OtpCubit())],
      child: const Scaffold(
        body: SafeArea(child: VerifyResetPasswordCodePageBlocConsumer()),
      ),
    );
  }
}
