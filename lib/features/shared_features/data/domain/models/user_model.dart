import 'package:quent/features/shared_features/data/domain/entities/user_entity.dart';
import 'package:quent/features/shared_features/data/domain/models/country_model.dart';
import 'package:quent/features/shared_features/data/domain/models/location_model.dart';

class UserModel extends UserEntity {
  UserModel(
    super.id,
    super.fullName,
    super.email,
    super.phone,
    super.phoneVerified,
    super.country,
    super.location,
    super.nationalId,
    super.dateOfBirth,
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
      json['national_id'].toString() as String?,
      json['date_of_birth'] as String?,
    );
  }
}
