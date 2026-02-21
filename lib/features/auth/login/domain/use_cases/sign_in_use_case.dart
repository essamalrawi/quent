import 'package:dartz/dartz.dart';

import 'package:quent/core/errors/faluire.dart';

import '../../../../../core/entities/full_user_entity.dart';
import '../../../../../core/use_cases/use_cases.dart';
import '../repos/login_repo.dart';

class SignInUseCase extends UseCase<FullUserEntity, int> {
  final LoginRepo loginRepo;

  SignInUseCase(this.loginRepo);

  @override
  Future<Either<Failure, FullUserEntity>> call([int param = 0]) {
    // TODO: implement call
    throw UnimplementedError();
  }

  // TODO: add implementation
}
