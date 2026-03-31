import 'package:dartz/dartz.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/shared_features/data/domain/entities/verify_phone_entity.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/core/use_cases/use_cases.dart';
import 'package:quent/features/auth/register/domain/repos/register_repo.dart';

class RequestVerifyCodeUseCase extends UseCase<VerifyPhoneEntity, String> {
  final RegisterRepo registerRepo;

  RequestVerifyCodeUseCase({required this.registerRepo});
  @override
  ResultFuture<VerifyPhoneEntity> call([String? phone]) async {
    if (phone == null) {
      return Left(InvalidParamsFailure("Invalid params failure"));
    }
    return await registerRepo.requestVerifyCode(phone: phone);
  }
}
