import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/main/search/data/data_sources/search_remote_data_source.dart';
import 'package:quent/features/main/search/data/domain/repos/search_repo.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';

class SearchRepoImpl extends SearchRepo {
  final SearchRemoteDataSourceImpl searchRemoteDataSourceImpl;

  SearchRepoImpl({required this.searchRemoteDataSourceImpl});

  @override
  ResultFuture<List<CarEntity>> searchForCars({
    String? query,
    String? carType,
    String? brandId,
    String? type,
    String? locationId,
    String? colorId,
    String? seatingCapacity,
    String? fuelType,
  }) async {
    List<CarEntity> cars;

    try {
      cars = await searchRemoteDataSourceImpl.searchForCars(
        query: query,
        carType: carType,
        brandId: brandId,
        type: type,
        locationId: locationId,
        colorId: colorId,
        seatingCapacity: seatingCapacity,
        fuelType: fuelType,
      );
      return right(cars);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
