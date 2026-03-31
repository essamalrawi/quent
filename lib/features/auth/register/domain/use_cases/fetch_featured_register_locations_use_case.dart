import 'package:dartz/dartz.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/shared_features/data/domain/entities/location_entity.dart';

import '../../../../../core/errors/faluire.dart';
import '../../../../../core/use_cases/use_cases.dart';
import '../repos/register_repo.dart';

class FetchFeaturedRegisterLocationsUseCase
    extends UseCase<List<LocationEntity>, NoParam> {
  final RegisterRepo registerRepo;

  FetchFeaturedRegisterLocationsUseCase(this.registerRepo);

  @override
  ResultFuture<List<LocationEntity>> call([NoParam? param]) async {
    return await registerRepo.fetchLocations();
  }
}
