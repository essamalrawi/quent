import 'package:dartz/dartz.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/core/use_cases/use_cases.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/main/home/data/domain/repos/home_repo.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';

class GetOneCarUseCase extends UseCase<CarEntity, int> {
  final HomeRepo homeRepo;

  GetOneCarUseCase({required this.homeRepo});

  @override
  ResultFuture<CarEntity> call([int? param]) async {
    if (param == null) {
      return Left(InvalidParamsFailure("Invalid params failure"));
    }
    return await homeRepo.getOneCar(id: param);
  }
}
