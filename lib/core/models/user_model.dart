import 'package:quent/core/entities/user_entity.dart';
import 'package:quent/core/models/country_model.dart';
import 'package:quent/core/models/location_model.dart';

class UserModel extends UserEntity {
  UserModel(
    super.id,
    super.fullName,
    super.email,
    super.phone,
    super.phoneVerified,
    super.country,
    super.location,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      json['id'],
      json['full_name'],
      json['email'],
      json['phone'],
      json['phone_is_verified'],
      CountryModel.fromJson(json['country']),
      LocationModel.fromJson(json['location']),
    );
  }
}
