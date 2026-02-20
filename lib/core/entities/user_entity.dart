import 'package:quent/core/entities/country_entity.dart';
import 'package:quent/core/entities/location_entity.dart';

class UserEntity {
  final int id;
  final String fullName;
  final String email;
  final String phone;
  final bool phoneVerified;
  final CountryEntity country;
  final LocationEntity location;
  final String? nationalId;
  final String? dateOfBirth;

  UserEntity(
    this.id,
    this.fullName,
    this.email,
    this.phone,
    this.phoneVerified,
    this.country,
    this.location,
    this.nationalId,
    this.dateOfBirth,
  );
}
