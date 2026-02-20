import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:quent/features/auth/register/presentation/pages/verify_your_phone_number_page.dart';
import 'package:quent/features/auth/register/presentation/pages/widgets/sign_up_page_body.dart';
import '../../../../../../constants/auth_keys.dart';
import '../../../../../../core/services/secure_storage_singleton.dart';
import '../../manager/cubits/sign_up/sign_up_cubit.dart';

class SignUpPageBlocConsumer extends StatelessWidget {
  const SignUpPageBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) async {
        if (state is SignUpSuccess) {
          await SecurePrefs.setString(kAccessToken, state.user.token.access);
          await SecurePrefs.setString(kRefreshToken, state.user.token.refresh);
          if (!context.mounted) return;
          Navigator.pushReplacementNamed(
            context,
            VerifyYourPhoneNumberPage.routeName,
          );
        } else if (state is SignUpFailure) {
          Flushbar(
            title: "Error",
            message: state.errorMessage,
            duration: const Duration(seconds: 5),
            backgroundColor: const Color(0xFFE53935),
 
            icon: const Icon(Icons.error_outline, color: Colors.white),
            flushbarPosition: FlushbarPosition.TOP,
            borderRadius: BorderRadius.circular(8),
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(16),
            boxShadows: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
          ).show(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignUpLoading ? true : false,
          child: const SignUpPageBody(),
        );
      },
    );
  }
}
