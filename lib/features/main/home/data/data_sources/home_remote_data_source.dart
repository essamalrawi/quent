import 'package:dio/dio.dart';
import 'package:quent/core/constants/auth_cached_keys.dart';
import 'package:quent/core/constants/endpoints.dart';
import 'package:quent/core/services/secure_storage_singleton.dart';
import 'package:quent/core/utils/api_service.dart';
import 'package:quent/features/main/home/data/domain/entities/brand_entity.dart';
import 'package:quent/features/main/home/data/domain/models/brand_model.dart';
import 'package:quent/features/main/home/data/domain/models/car_model.dart';
import 'package:quent/features/main/home/data/domain/models/car_review_model.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';
import 'package:quent/features/shared_features/data/domain/entities/reviews_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BrandEntity>> getAllBrands();
  Future<List<CarEntity>> getAllCars();
  Future<List<ReviewsEntity>> getCarReview({required int id});
  Future<CarEntity> getOneCar({required int id});
  Future<List<CarEntity>> getBestCars();
  Future<List<CarEntity>> getNearestCars();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BrandEntity>> getAllBrands() async {
    final data = await apiService.get(endPoint: Endpoints.getAllBrands);

    final List brandsList = data['data'];
    final brands = brandsList
        .map((e) => BrandModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return brands;
  }

  @override
  Future<List<CarEntity>> getAllCars() async {
    final data = await apiService.get(endPoint: Endpoints.getAllCars);

    final List carsList = data['data'];
    final cars = carsList
        .map((e) => CarModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return cars;
  }

  @override
  Future<CarEntity> getOneCar({required int id}) async {
    final data = await apiService.get(endPoint: "${Endpoints.getAllCars}/$id");

    return CarModel.fromJson(data);
  }

  @override
  Future<List<ReviewsEntity>> getCarReview({required int id}) async {
    final data = await apiService.get(
      endPoint: "${Endpoints.getAllCars}/$id/${Endpoints.getReviewsreviews}",
    );

    final List reviewsList = data['data'];
    final reviews = reviewsList
        .map((e) => CarReviewsModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return reviews;
  }

  @override
  Future<List<CarEntity>> getBestCars() async {
    final data = await apiService.get(endPoint: Endpoints.getBestCars);

    final List carsList = data['data'];
    final cars = carsList
        .map((e) => CarModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return cars;
  }

  @override
  Future<List<CarEntity>> getNearestCars() async {
    var token = await SecurePrefs.getString(kAccessToken);

    final data = await apiService.get(
      endPoint: Endpoints.getNearestCars,
      options: Options(headers: {'Authorization': 'Bearer $token'}),
    );

    final List carsList = data['data'];
    final cars = carsList
        .map((e) => CarModel.fromJson(e as Map<String, dynamic>))
        .toList();

    return cars;
  }
}
