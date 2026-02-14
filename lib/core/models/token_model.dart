import 'package:quent/core/entities/token_entity.dart';

class TokenModel extends TokenEntity {
  TokenModel(super.access, super.refresh);

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(json['access'], json['refresh']);
  }
}
