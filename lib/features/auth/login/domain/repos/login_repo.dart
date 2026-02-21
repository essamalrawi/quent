import 'package:dartz/dartz.dart';
import 'package:quent/core/errors/faluire.dart';

import '../../../../../core/entities/full_user_entity.dart';

abstract class LoginRepo {
  Future<Either<Failure, FullUserEntity>> signIn({
    required String email,
    required String password,
  });
}
