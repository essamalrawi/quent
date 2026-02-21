import 'package:quent/features/auth/passwords/domain/entities/forgot_password_entity.dart';

class ForgotPasswordModel extends ForgotPasswordEntity {
  ForgotPasswordModel(super.code, super.resetToken);

  factory ForgotPasswordModel.fromJson(Map<String, dynamic> json) {
    return ForgotPasswordModel(json['code'], json['reset_token']);
  }
}
