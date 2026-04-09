import 'package:quent/core/use_cases/use_cases.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/main/home/data/domain/repos/home_repo.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';

class GetBestCarsUseCase extends UseCase<List<CarEntity>, NoParam> {
  final HomeRepo homeRepo;

  GetBestCarsUseCase({required this.homeRepo});

  @override
  ResultFuture<List<CarEntity>> call([NoParam? param]) async {
    return await homeRepo.getBestCars();
  }
}
