import 'package:quent/core/entities/verify_phone_entity.dart';

class VerifyPhoneModel extends VerifyPhoneEntity {
  VerifyPhoneModel({required super.code, required super.verifyToken});

  factory VerifyPhoneModel.fromJson(Map<String, dynamic> json) {
    return VerifyPhoneModel(
      code: json['code'],
      verifyToken: json['verify_token'],
    );
  }
}
