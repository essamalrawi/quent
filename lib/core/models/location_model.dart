import 'package:quent/core/entities/location_entity.dart';

class LocationModel extends LocationEntity {
  LocationModel({
    required super.id,
    required super.name,
    required super.lat,
    required super.lng,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) => LocationModel(
    id: json['id'],
    name: json['name'],
    lat: json['lat'],
    lng: json['lng'],
  );
}
