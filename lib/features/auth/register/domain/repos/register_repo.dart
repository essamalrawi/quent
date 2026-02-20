import 'package:dartz/dartz.dart';
import 'package:quent/core/entities/country_entity.dart';
import 'package:quent/core/entities/full_user_entity.dart';
import 'package:quent/core/entities/location_entity.dart';
import '../../../../../core/entities/verify_phone_entity.dart';
import '../../../../../core/errors/faluire.dart';

abstract class RegisterRepo {
  Future<Either<Failure, List<CountryEntity>>> fetchCountries();

  Future<Either<Failure, List<LocationEntity>>> fetchLocations();

  Future<Either<Failure, FullUserEntity>> signUp({
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

  Future<Either<Failure, VerifyPhoneEntity>> requestVerifyCode({
    required String phone,
  });

  Future<Either<Failure, void>> confirmVerifyCode({
    required String code,
    required String verifyToken,
    required String accessToken,
  });
}
