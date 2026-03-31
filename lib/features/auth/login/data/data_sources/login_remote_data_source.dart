import 'package:dio/dio.dart';
import 'package:quent/core/constants/endpoints.dart';

import '../../../../shared_features/data/domain/entities/full_user_entity.dart';
import '../../../../shared_features/data/domain/models/full_user_model.dart';
import '../../../../../core/utils/api_service.dart';

abstract class LoginRemoteDataSource {
  Future<FullUserEntity> signIn({
    required String email,
    required String password,
  });
}

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final ApiService apiService;

  LoginRemoteDataSourceImpl(this.apiService);

  @override
  Future<FullUserEntity> signIn({
    required String email,
    required String password,
  }) async {
    final formData = FormData.fromMap({
      "email": email.trim(),
      "password": password,
    });

    var data = await apiService.post(endPoint: Endpoints.login, data: formData);

    return FullUserModel.fromJson(data);
  }
}
