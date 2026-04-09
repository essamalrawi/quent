import 'package:quent/core/use_cases/use_cases.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/main/home/data/domain/entities/brand_entity.dart';
import 'package:quent/features/main/home/data/domain/repos/home_repo.dart';

class GetAllBrandsUseCase extends UseCase<List<BrandEntity>, NoParam> {
  final HomeRepo homeRepo;

  GetAllBrandsUseCase({required this.homeRepo});

  @override
  ResultFuture<List<BrandEntity>> call([NoParam? param]) async {
    return await homeRepo.getAllBrands();
  }
}
