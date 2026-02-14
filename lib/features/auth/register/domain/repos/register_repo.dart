import 'package:dartz/dartz.dart';
import 'package:quent/core/entities/country_entity.dart';
import 'package:quent/core/entities/location_entity.dart';
import '../../../../../core/errors/faluire.dart';

abstract class RegisterRepo {
  Future<Either<Failure, List<CountryEntity>>> fetchCountries();

  Future<Either<Failure, List<LocationEntity>>> fetchLocations();
}
