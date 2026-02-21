import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quent/features/auth/passwords/data/repos/password_repo_impl.dart';
import 'package:quent/features/auth/passwords/domain/entities/forgot_password_entity.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.passwordRepoImpl) : super(ResetPasswordInitial());

  final PasswordRepoImpl passwordRepoImpl;
  late String code = "";

  late ForgotPasswordEntity forgotPasswordEntity;

  Future<void> requestPasswordResetCode({required String email}) async {
    emit(ResetPasswordLoading());

    final result = await passwordRepoImpl.forgotPassword(email: email);
    log("HEWWWOOOO1");
    result.fold(
      (failure) {
        emit(ResetPasswordFailure(errorMessage: failure.message));
      },
      (success) {
        forgotPasswordEntity = success;
        emit(ResetPasswordRequestSuccess(forgotPasswordEntity: success));
      },
    );
  }

  Future<void> resetPasswordResetCode({
    required String resetToken,
    required String code,
    required String password,
    required String confirmPassword,
  }) async {
    emit(ResetPasswordLoading());

    final result = await passwordRepoImpl.resetPassword(
      resetToken: resetToken,
      code: code,
      password: password,
      confirmPassword: confirmPassword,
    );

    result.fold(
      (failure) {
        emit(ResetPasswordFailure(errorMessage: failure.message));
      },
      (success) {
        emit(ResetPasswordSuccess(resetPasswordEntity: success));
      },
    );
  }

  void resetCode() {
    code = '';
    emit(CodeChanged());
  }
}
