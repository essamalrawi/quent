import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/shared_features/data/domain/entities/country_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/full_user_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/location_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/verify_phone_entity.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/features/auth/register/data/data_sources/register_remote_data_source.dart';
import '../../domain/repos/register_repo.dart';

class RegisterRepoImpl extends RegisterRepo {
  final RegisterRemoteDataSource registerRemoteDataSource;

  RegisterRepoImpl(this.registerRemoteDataSource);

  @override
  ResultFuture<List<CountryEntity>> fetchCountries() async {
    List<CountryEntity> countries;

    try {
      countries = await registerRemoteDataSource.getCountries();
      return right(countries);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<LocationEntity>> fetchLocations() async {
    List<LocationEntity> locations;

    try {
      locations = await registerRemoteDataSource.getLocations();
      return right(locations);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
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
  }) async {
    FullUserEntity user;

    try {
      user = await registerRemoteDataSource.signUp(
        fullName: fullName,
        email: email,
        password: password,
        countryId: countryId,
        phone: phone,
        createCar: createCar,
        locationId: locationId,
        nationalId: nationalId,
        dateOfBirth: dateOfBirth,
      );
      return right(user);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<VerifyPhoneEntity> requestVerifyCode({
    required String phone,
  }) async {
    VerifyPhoneEntity result;
    try {
      result = await registerRemoteDataSource.requestVerifyCode(phone: phone);
      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<void> confirmVerifyCode({
    required String code,
    required String verifyToken,
    required String accessToken,
  }) async {
    try {
      await registerRemoteDataSource.confirmVerifyCode(
        code: code,
        verifyToken: verifyToken,
        accessToken: accessToken,
      );
      return right(null);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
