import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/main/search/data/data_sources/repos/search_repo_impl.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';

class SearchForCarsUseCase {
  final SearchRepoImpl searchRepoImpl;
  SearchForCarsUseCase(this.searchRepoImpl);

  ResultFuture<List<CarEntity>> call(SearchForCarsParams params) async {
    return await searchRepoImpl.searchForCars(
      query: params.query,
      carType: params.carType,
      brandId: params.brandId,
      type: params.type,
      locationId: params.locationId,
      colorId: params.colorId,
      seatingCapacity: params.seatingCapacity,
      fuelType: params.fuelType,
    );
  }
}

class SearchForCarsParams {
  final String? query;
  final String? carType;
  final String? brandId;
  final String? type;
  final String? locationId;
  final String? colorId;
  final String? seatingCapacity;
  final String? fuelType;

  SearchForCarsParams({
    this.query,
    this.carType,
    this.brandId,
    this.type,
    this.locationId,
    this.colorId,
    this.seatingCapacity,
    this.fuelType,
  });
}
