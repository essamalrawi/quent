import 'package:dartz/dartz.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/shared_features/data/domain/entities/country_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/full_user_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/location_entity.dart';
import '../../../../shared_features/data/domain/entities/verify_phone_entity.dart';
import '../../../../../core/errors/faluire.dart';

abstract class RegisterRepo {
  ResultFuture<List<CountryEntity>> fetchCountries();

  ResultFuture<List<LocationEntity>> fetchLocations();

  ResultFuture<FullUserEntity> signUp({
    required String fullName,
    required String email,
    required String password,
    required int countryId,
    required String phone,
    required bool createCar,
    required int locationId,
    String? nationalId,
    String? dateOfBirth,
  });

  ResultFuture<VerifyPhoneEntity> requestVerifyCode({required String phone});

  ResultFuture<void> confirmVerifyCode({
    required String code,
    required String verifyToken,
    required String accessToken,
  });
}
