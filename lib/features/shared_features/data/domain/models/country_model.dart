import 'package:quent/features/shared_features/data/domain/entities/country_entity.dart';

class CountryModel extends CountryEntity {
  CountryModel({
    required super.id,
    required super.country,
    required super.abbreviation,
  });

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
    id: json['id'],
    country: json['country'],
    abbreviation: json['abbreviation'],
  );
}
