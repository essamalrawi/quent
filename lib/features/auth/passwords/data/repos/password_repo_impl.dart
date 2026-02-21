import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:quent/core/errors/faluire.dart';
import 'package:quent/features/auth/login/data/data_sources/login_remote_data_source.dart';
import 'package:quent/features/auth/passwords/data/data_sources/password_remote_data_source.dart';

import 'package:quent/features/auth/passwords/domain/entities/forgot_password_entity.dart';

import '../../domain/repos/password_repo.dart';

class PasswordRepoImpl extends PasswordRepo {
  final PasswordRemoteDataSourceImpl passwordRemoteDataSourceImpl;

  PasswordRepoImpl(this.passwordRemoteDataSourceImpl);

  @override
  Future<Either<Failure, ForgotPasswordEntity>> forgotPassword({
    required String email,
  }) async {
    try {
      final result = await passwordRemoteDataSourceImpl.forgotPassword(
        email: email,
      );
      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> resetPassword({
    required String resetToken,
    required String code,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final result = await passwordRemoteDataSourceImpl.resetPassword(
        resetToken: resetToken,
        code: code,
        password: password,
        confirmPassword: confirmPassword,
      );
      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
