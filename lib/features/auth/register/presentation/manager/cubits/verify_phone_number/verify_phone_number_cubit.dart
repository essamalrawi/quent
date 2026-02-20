import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quent/core/entities/verify_phone_entity.dart';

import '../../../../../../../constants/auth_keys.dart';
import '../../../../../../../core/services/secure_storage_singleton.dart';
import '../../../../../login/domain/entities/request_verify_phone_entity.dart';
import '../../../../domain/repos/register_repo.dart';

part 'verify_phone_number_state.dart';

class VerifyPhoneNumberCubit extends Cubit<VerifyPhoneNumberState> {
  VerifyPhoneNumberCubit(this.registerRepo) : super(VerifyPhoneNumberInitial());
  final RegisterRepo registerRepo;

  Future<void> requestVerifyCode({required String phone}) async {
    emit(VerifyPhoneNumberLoading());

    final result = await registerRepo.requestVerifyCode(phone: phone);

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

    final result = await registerRepo.confirmVerifyCode(
      code: code,
      verifyToken: verifyToken,
      accessToken: accessToken,
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
