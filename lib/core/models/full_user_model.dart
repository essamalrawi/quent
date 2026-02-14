import 'package:quent/core/entities/full_user_entity.dart';
import 'package:quent/core/models/token_model.dart';
import 'package:quent/core/models/user_model.dart';

class FullUserModel extends FullUserEntity {
  FullUserModel({required super.user, required super.token});

  factory FullUserModel.fromJson(Map<String, dynamic> json) {
    return FullUserModel(
      user: UserModel.fromJson(json['user']),
      token: TokenModel.fromJson(json['tokens']),
    );
  }
}
