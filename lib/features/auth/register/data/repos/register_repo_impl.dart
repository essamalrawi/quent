import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:quent/core/entities/country_entity.dart';

import 'package:quent/core/entities/location_entity.dart';

import 'package:quent/core/errors/faluire.dart';
import 'package:quent/features/auth/register/data/data_sources/register_remote_data_source.dart';

import '../../domain/repos/register_repo.dart';

class RegisterRepoImpl extends RegisterRepo {
  final RegisterRemoteDataSource registerRemoteDataSource;

  RegisterRepoImpl(this.registerRemoteDataSource);

  @override
  Future<Either<Failure, List<CountryEntity>>> fetchCountries() async {
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
  Future<Either<Failure, List<LocationEntity>>> fetchLocations() async {
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
}
