import 'package:dartz/dartz.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/core/use_cases/use_cases.dart';
import 'package:quent/features/auth/passwords/domain/repos/password_repo.dart';

class ResetPasswordUseCase extends UseCase<String, ResetPasswordParams> {
  final PasswordRepo passwordRepo;

  ResetPasswordUseCase({required this.passwordRepo});

  @override
  Future<Either<Failure, String>> call([ResetPasswordParams? param]) async {
    if (param == null) {
      return Left(InvalidParamsFailure("Invalid params failure"));
    }

    return await passwordRepo.resetPassword(
      resetToken: param.resetToken,
      code: param.code,
      password: param.password,
      confirmPassword: param.confirmPassword,
    );
  }
}

class ResetPasswordParams {
  final String resetToken;
  final String code;
  final String password;
  final String confirmPassword;

  ResetPasswordParams({
    required this.resetToken,
    required this.code,
    required this.password,
    required this.confirmPassword,
  });
}
