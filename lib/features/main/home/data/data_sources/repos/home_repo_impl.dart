import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:quent/core/errors/faluire.dart';
import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/main/home/data/data_sources/home_remote_data_source.dart';
import 'package:quent/features/main/home/data/domain/entities/brand_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/reviews_entity.dart';
import 'package:quent/features/main/home/data/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSourceImpl homeRemoteDataSourceImpl;

  HomeRepoImpl({required this.homeRemoteDataSourceImpl});

  @override
  ResultFuture<List<BrandEntity>> getAllBrands() async {
    List<BrandEntity> brands;

    try {
      brands = await homeRemoteDataSourceImpl.getAllBrands();
      return right(brands);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<CarEntity>> getAllCars() async {
    List<CarEntity> cars;

    try {
      cars = await homeRemoteDataSourceImpl.getAllCars();
      return right(cars);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<CarEntity>> getBestCars() async {
    List<CarEntity> cars;

    try {
      cars = await homeRemoteDataSourceImpl.getBestCars();
      return right(cars);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<ReviewsEntity>> getCarReview({required int id}) async {
    List<ReviewsEntity> reviews;

    try {
      reviews = await homeRemoteDataSourceImpl.getCarReview(id: id);
      return right(reviews);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<List<CarEntity>> getNearestCars() async {
    List<CarEntity> cars;

    try {
      cars = await homeRemoteDataSourceImpl.getNearestCars();
      return right(cars);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  ResultFuture<CarEntity> getOneCar({required int id}) async {
    CarEntity car;

    try {
      car = await homeRemoteDataSourceImpl.getOneCar(id: id);
      return right(car);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
