import 'package:quent/core/utils/typedefs.dart';
import '../../../../shared_features/data/domain/entities/full_user_entity.dart';

abstract class LoginRepo {
  ResultFuture<FullUserEntity> signIn({
    required String email,
    required String password,
  });
}
