import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quent/core/entities/full_user_entity.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/features/auth/login/data/data_sources/login_remote_data_source.dart';
import 'package:quent/features/auth/login/domain/repos/login_repo.dart';

class LoginRepoImpl extends LoginRepo {
  final LoginRemoteDataSourceImpl loginRemoteDataSourceImpl;

  LoginRepoImpl(this.loginRemoteDataSourceImpl);

  @override
  Future<Either<Failure, FullUserEntity>> signIn({
    required String email,
    required String password,
  }) async {
    FullUserEntity user;

    try {
      user = await loginRemoteDataSourceImpl.signIn(
        email: email,
        password: password,
      );
      return right(user);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
