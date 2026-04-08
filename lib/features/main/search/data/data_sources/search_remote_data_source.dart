import 'package:quent/core/constants/endpoints.dart';
import 'package:quent/core/utils/api_service.dart';
import 'package:quent/features/main/home/data/domain/models/car_model.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';

abstract class SearchRemoteDataSource {
  Future<List<CarEntity>> searchForCars({
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

class SearchRemoteDataSourceImpl extends SearchRemoteDataSource {
  final ApiService apiService;

  SearchRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<CarEntity>> searchForCars({
    String? query,
    String? carType,
    String? brandId,
    String? type,
    String? locationId,
    String? colorId,
    String? seatingCapacity,
    String? fuelType,
  }) async {
    final params = {
      'query': query,
      'car_type': carType,
      'brand_id': brandId,
      'type': type,
      'location_id': locationId,
      'color_id': colorId,
      'seating_capacity': seatingCapacity,
      'fuel_type': fuelType,
    }..removeWhere((key, value) => value == null);

    final data = await apiService.get(
      endPoint: Endpoints.searchCars,
      queryParameters: params,
    );

    final List carsList = data['data'];
    final cars = carsList
        .map((e) => CarModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return cars;
  }
}
