part of 'nearby_cars_cubit.dart';

@immutable
sealed class NearbyCarsState extends Equatable {
  List<Object?> get props => [];
}

final class NearbyCarsInitial extends NearbyCarsState {}

final class NearbyCarsLoading extends NearbyCarsState {}

final class NearbyCarsFaliure extends NearbyCarsState {
  final String errorMessage;

  NearbyCarsFaliure({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

final class NearbyCarsSuccess extends NearbyCarsState {
  final List<CarEntity> cars;

  NearbyCarsSuccess({required this.cars});
  @override
  List<Object?> get props => [cars];
}
