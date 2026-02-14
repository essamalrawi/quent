import 'package:quent/core/entities/country_entity.dart';
import 'package:quent/core/entities/location_entity.dart';
import 'package:quent/core/models/country_model.dart';
import 'package:quent/core/models/location_model.dart';
import '../../../../../core/utils/api_service.dart';

abstract class RegisterRemoteDataSource {
  Future<List<CountryEntity>> getCountries();

  Future<List<LocationEntity>> getLocations();
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
