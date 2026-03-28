import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:quent/features/auth/passwords/domain/entities/forgot_password_entity.dart';
import 'package:quent/features/auth/passwords/domain/use_cases/forgot_password_use_case.dart';
import 'package:quent/features/auth/passwords/domain/use_cases/reset_password_use_case.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.forgotPasswordUseCase, this.resetPasswordUseCase)
    : super(ResetPasswordInitial());

  late String code = "";

  final ForgotPasswordUseCase forgotPasswordUseCase;
  final ResetPasswordUseCase resetPasswordUseCase;
  late ForgotPasswordEntity forgotPasswordEntity;

  Future<void> requestPasswordResetCode({required String email}) async {
    emit(ResetPasswordLoading());

    final result = await forgotPasswordUseCase.call(email);
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

    final result = await resetPasswordUseCase.call(
      ResetPasswordParams(
        resetToken: resetToken,
        code: code,
        password: password,
        confirmPassword: confirmPassword,
      ),
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
