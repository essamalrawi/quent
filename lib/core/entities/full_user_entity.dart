import 'package:quent/core/entities/token_entity.dart';
import 'package:quent/core/entities/user_entity.dart';

class FullUserEntity {
  final UserEntity user;
  final TokenEntity token;

  FullUserEntity({required this.user, required this.token});
}
