part of 'reset_password_cubit.dart';

@immutable
sealed class ResetPasswordState extends Equatable {
  List<Object?> get props => [];
}

final class ResetPasswordInitial extends ResetPasswordState {}

final class ResetPasswordLoading extends ResetPasswordState {}

final class ResetPasswordFailure extends ResetPasswordState {
  final String errorMessage;

  ResetPasswordFailure({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

final class ResetPasswordRequestSuccess extends ResetPasswordState {
  final ForgotPasswordEntity forgotPasswordEntity;

  ResetPasswordRequestSuccess({required this.forgotPasswordEntity});
  @override
  List<Object?> get props => [forgotPasswordEntity];
}

final class ResetPasswordSuccess extends ResetPasswordState {
  final String resetPasswordEntity;

  ResetPasswordSuccess({required this.resetPasswordEntity});
  @override
  List<Object?> get props => [resetPasswordEntity];
}

final class CodeChanged extends ResetPasswordState {}
