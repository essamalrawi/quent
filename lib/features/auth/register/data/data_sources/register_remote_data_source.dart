import 'package:dio/dio.dart';
import 'package:quent/core/entities/country_entity.dart';
import 'package:quent/core/entities/full_user_entity.dart';
import 'package:quent/core/entities/location_entity.dart';
import 'package:quent/core/models/country_model.dart';
import 'package:quent/core/models/full_user_model.dart';
import 'package:quent/core/models/location_model.dart';
import '../../../../../core/utils/api_service.dart';

abstract class RegisterRemoteDataSource {
  Future<List<CountryEntity>> getCountries();

  Future<List<LocationEntity>> getLocations();

  Future<FullUserEntity> signUp({
    required String fullName,
    required String email,
    required String password,
    required int countryId,
    required String phone,
    required bool createCar,
    required int locationId,
  });
}

class RegisterRemoteDataSourceImpl extends RegisterRemoteDataSource {
  final ApiService apiService;

  RegisterRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<CountryEntity>> getCountries() async {
    var data = await apiService.get(
      endPoint: 'public/countries/?page_size=245',
    );
    List<CountryEntity> countries = getCountryList(data);
    return countries;
  }

  @override
  Future<List<LocationEntity>> getLocations() async {
    var data = await apiService.get(endPoint: 'public/register_locations');
    List<LocationEntity> locations = getLocationList(data);
    return locations;
  }

  @override
  Future<FullUserEntity> signUp({
    required String fullName,
    required String email,
    required String password,
    required int countryId,
    required String phone,
    required bool createCar,
    required int locationId,
  }) async {
    final formData = FormData.fromMap({
      "phone": phone,
      "email": email,
      "password": password,
      "country_id": countryId,
      "full_name": fullName,
      "location_id": locationId,
      "available_to_create_car": createCar,
    });

    var data = await apiService.post(
      endPoint: 'auth/register/',
      data: formData,
    );
    // print("DATA: " + data['tokens']['access']);
    return FullUserModel.fromJson(data);
  }

  List<CountryEntity> getCountryList(Map<String, dynamic> data) {
    List<CountryEntity> countries = [];
    for (var countryMap in data['data']) {
      countries.add(CountryModel.fromJson(countryMap));
    }
    return countries;
  }

  List<LocationEntity> getLocationList(Map<String, dynamic> data) {
    List<LocationEntity> locations = [];
    for (var locationMap in data['data']) {
      locations.add(LocationModel.fromJson(locationMap));
    }
    return locations;
  }
}
