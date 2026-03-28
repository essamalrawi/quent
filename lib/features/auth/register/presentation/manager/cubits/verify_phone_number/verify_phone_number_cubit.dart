import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:quent/core/entities/verify_phone_entity.dart';
import 'package:quent/features/auth/register/domain/use_cases/confirm_verify_code_use_case.dart';
import 'package:quent/features/auth/register/domain/use_cases/request_verify_code_use_case.dart';
import '../../../../../../../core/constants/auth_cached_keys.dart';
import '../../../../../../../core/services/secure_storage_singleton.dart';
part 'verify_phone_number_state.dart';

class VerifyPhoneNumberCubit extends Cubit<VerifyPhoneNumberState> {
  VerifyPhoneNumberCubit({
    required this.requestVerifyCodeUseCase,
    required this.confirmVerifyCodeUseCase,
  }) : super(VerifyPhoneNumberInitial());
  final RequestVerifyCodeUseCase requestVerifyCodeUseCase;
  final ConfirmVerifyCodeUseCase confirmVerifyCodeUseCase;
  Future<void> requestVerifyCode({required String phone}) async {
    emit(VerifyPhoneNumberLoading());

    final result = await requestVerifyCodeUseCase.call(phone);

    result.fold(
      (failure) {
        log(failure.message);
        emit(VerifyPhoneNumberRequestFailure(errorMessage: failure.message));
      },
      (right) async {
        await SecurePrefs.setString(kVerifyToken, right.verifyToken);
        emit(VerifyPhoneNumberRequestSuccess(verifyPhoneEntity: right));
      },
    );
  }

  Future<void> confirmVerifyCode({
    required String code,
    required String verifyToken,
    required String accessToken,
  }) async {
    emit(VerifyPhoneNumberLoading());

    final result = await confirmVerifyCodeUseCase.call(
      ConfirmVerifyCodeParams(
        code: code,
        verifyToken: verifyToken,
        accessToken: accessToken,
      ),
    );

    result.fold(
      (failure) {
        log(failure.message);
        emit(VerifyPhoneNumberFailure(errorMessage: failure.message));
      },
      (right) async {
        emit(VerifyPhoneNumberSuccess());
      },
    );
  }
}
