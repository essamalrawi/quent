import 'package:dartz/dartz.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/core/use_cases/use_cases.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/auth/passwords/domain/entities/forgot_password_entity.dart';
import 'package:quent/features/auth/passwords/domain/repos/password_repo.dart';

class ForgotPasswordUseCase extends UseCase<ForgotPasswordEntity, String> {
  final PasswordRepo passwordRepo;

  ForgotPasswordUseCase({required this.passwordRepo});

  @override
  ResultFuture<ForgotPasswordEntity> call([String? email]) async {
    if (email == null) {
      return Left(InvalidParamsFailure("Invalid params failure"));
    }
    return await passwordRepo.forgotPassword(email: email);
  }
}
