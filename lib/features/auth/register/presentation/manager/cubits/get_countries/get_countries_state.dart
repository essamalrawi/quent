part of 'get_countries_cubit.dart';

@immutable
sealed class GetCountriesState extends Equatable {
  List<Object?> get props => [];
}

final class GetCountriesInitial extends GetCountriesState {}

final class GetCountriesLoading extends GetCountriesState {}

final class GetCountriesSuccess extends GetCountriesState {
  final List<CountryEntity> countries;

  GetCountriesSuccess({required this.countries});
  @override
  List<Object?> get props => [countries];
}

final class GetCountriesFailure extends GetCountriesState {
  final String errorMessage;

  GetCountriesFailure({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}
