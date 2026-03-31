import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/auth/passwords/domain/entities/forgot_password_entity.dart';

abstract class PasswordRepo {
  ResultFuture<ForgotPasswordEntity> forgotPassword({required String email});

  ResultFuture<String> resetPassword({
    required String resetToken,
    required String code,
    required String password,
    required String confirmPassword,
  });
}
