import 'package:dartz/dartz.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/features/auth/passwords/domain/entities/forgot_password_entity.dart';

abstract class PasswordRepo {
  Future<Either<Failure, ForgotPasswordEntity>> forgotPassword({
    required String email,
  });

  Future<Either<Failure, String>> resetPassword({
    required String resetToken,
    required String code,
    required String password,
    required String confirmPassword,
  });
}
