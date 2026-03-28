part of 'get_locations_cubit.dart';

@immutable
sealed class GetLocationsState extends Equatable {
  List<Object?> get props => [];
}

final class GetLocationsInitial extends GetLocationsState {}

final class GetLocationsLoading extends GetLocationsState {}

final class GetLocationsFailure extends GetLocationsState {
  final String errorMessage;

  GetLocationsFailure({required this.errorMessage});
  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];
}

final class GetLocationsSuccess extends GetLocationsState {
  final List<LocationEntity> locations;

  GetLocationsSuccess({required this.locations});
  @override
  // TODO: implement props
  List<Object?> get props => [locations];
}
