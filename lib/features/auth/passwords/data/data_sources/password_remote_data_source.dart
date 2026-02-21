import 'package:dio/dio.dart';
import 'package:quent/core/utils/api_service.dart';
import 'package:quent/features/auth/passwords/data/models/forgot_password_model.dart';
import 'package:quent/features/auth/passwords/domain/entities/forgot_password_entity.dart';

abstract class PasswordRemoteDataSource {
  Future<ForgotPasswordEntity> forgotPassword({required String email});

  Future<String> resetPassword({
    required String resetToken,
    required String code,
    required String password,
    required String confirmPassword,
  });
}

class PasswordRemoteDataSourceImpl extends PasswordRemoteDataSource {
  final ApiService apiService;

  PasswordRemoteDataSourceImpl(this.apiService);

  @override
  Future<ForgotPasswordEntity> forgotPassword({required String email}) async {
    final formData = FormData.fromMap({"email": email.trim()});
    final data = await apiService.post(
      endPoint: "auth/forgot_password/",
      data: formData,
    );

    return ForgotPasswordModel.fromJson(data);
  }

  @override
  Future<String> resetPassword({
    required String resetToken,
    required String code,
    required String password,
    required String confirmPassword,
  }) async {
    final formData = FormData.fromMap({
      "reset_token": resetToken.trim(),
      "code": code.trim(),
      "password": password.trim(),
      "confirm_password": confirmPassword.trim(),
    });
    final data = await apiService.post(
      endPoint: "auth/reset_password/",
      data: formData,
    );

    return data['message'];
  }
}
