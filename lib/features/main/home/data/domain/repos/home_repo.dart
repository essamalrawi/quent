import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/main/home/data/domain/entities/brand_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/reviews_entity.dart';

abstract class HomeRepo {
  ResultFuture<List<BrandEntity>> getAllBrands();
  ResultFuture<List<CarEntity>> getAllCars();
  ResultFuture<List<ReviewsEntity>> getCarReview({required int id});
  ResultFuture<CarEntity> getOneCar({required int id});
  ResultFuture<List<CarEntity>> getBestCars();
  ResultFuture<List<CarEntity>> getNearestCars();
}
