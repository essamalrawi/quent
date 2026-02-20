part of 'verify_phone_number_cubit.dart';

@immutable
sealed class VerifyPhoneNumberState {}

final class VerifyPhoneNumberInitial extends VerifyPhoneNumberState {}

final class VerifyPhoneNumberLoading extends VerifyPhoneNumberState {}

final class VerifyPhoneNumberFailure extends VerifyPhoneNumberState {
  final String errorMessage;

  VerifyPhoneNumberFailure({required this.errorMessage});
}

final class VerifyPhoneNumberSuccess extends VerifyPhoneNumberState {
  VerifyPhoneNumberSuccess();
}

final class VerifyPhoneNumberRequestFailure extends VerifyPhoneNumberState {
  final String errorMessage;

  VerifyPhoneNumberRequestFailure({required this.errorMessage});
}

final class VerifyPhoneNumberRequestSuccess extends VerifyPhoneNumberState {
  final VerifyPhoneEntity verifyPhoneEntity;

  VerifyPhoneNumberRequestSuccess({required this.verifyPhoneEntity});
}
