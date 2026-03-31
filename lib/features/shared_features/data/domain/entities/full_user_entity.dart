import 'package:quent/features/shared_features/data/domain/entities/token_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/user_entity.dart';

class FullUserEntity {
  final UserEntity user;
  final TokenEntity token;

  FullUserEntity({required this.user, required this.token});
}
