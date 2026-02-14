import 'package:dartz/dartz.dart';
import 'package:quent/core/entities/location_entity.dart';

import '../../../../../core/errors/faluire.dart';
import '../../../../../core/use_cases/use_cases.dart';
import '../repos/register_repo.dart';

class FetchFeaturedRegisterLocationsUseCase
    extends UseCase<List<LocationEntity>, int> {
  final RegisterRepo registerRepo;

  FetchFeaturedRegisterLocationsUseCase(this.registerRepo);

  @override
  Future<Either<Failure, List<LocationEntity>>> call([int param = 0]) async {
    return await registerRepo.fetchLocations();
  }
}
