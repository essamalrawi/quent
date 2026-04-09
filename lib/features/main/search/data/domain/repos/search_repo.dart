import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';

abstract class SearchRepo {
  ResultFuture<List<CarEntity>> searchForCars({
    String? query,
    String? carType,
    String? brandId,
    String? type,
    String? locationId,
    String? colorId,
    String? seatingCapacity,
    String? fuelType,
  });
}
