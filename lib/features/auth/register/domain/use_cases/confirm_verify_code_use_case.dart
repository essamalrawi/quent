import 'package:dartz/dartz.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/core/use_cases/use_cases.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/auth/register/domain/repos/register_repo.dart';

class ConfirmVerifyCodeUseCase extends UseCase<void, ConfirmVerifyCodeParams> {
  final RegisterRepo registerRepo;

  ConfirmVerifyCodeUseCase({required this.registerRepo});

  @override
  ResultFuture<void> call([ConfirmVerifyCodeParams? data]) async {
    if (data == null) {
      return Left(InvalidParamsFailure("Invalid params failure"));
    }

    return await registerRepo.confirmVerifyCode(
      code: data.code,
      verifyToken: data.verifyToken,
      accessToken: data.accessToken,
    );
  }
}

class ConfirmVerifyCodeParams {
  final String code;
  final String verifyToken;
  final String accessToken;

  ConfirmVerifyCodeParams({
    required this.code,
    required this.verifyToken,
    required this.accessToken,
  });
}
