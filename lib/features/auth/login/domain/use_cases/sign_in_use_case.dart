import 'package:dartz/dartz.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/auth/login/data/repos/login_repo_impl.dart';

import '../../../../shared_features/data/domain/entities/full_user_entity.dart';
import '../../../../../core/use_cases/use_cases.dart';

class SignInUseCase extends UseCase<FullUserEntity, SignInParams> {
  final LoginRepoImpl loginRepoimpl;

  SignInUseCase(this.loginRepoimpl);

  @override
  ResultFuture<FullUserEntity> call([SignInParams? param]) async {
    if (param == null) {
      return Left(InvalidParamsFailure("Invalid params failure"));
    }

    return await loginRepoimpl.signIn(
      email: param.email,
      password: param.password,
    );
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});
}
