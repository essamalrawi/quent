part of 'search_for_cars_cubit.dart';

sealed class SearchForCarsState extends Equatable {
  const SearchForCarsState();

  @override
  List<Object> get props => [];
}

final class SearchForCarsInitial extends SearchForCarsState {}

final class SearchForCarsLoading extends SearchForCarsState {}

final class SearchForCarsFaliure extends SearchForCarsState {
  final String errorMessage;

  const SearchForCarsFaliure({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}

final class SearchForCarsSuccess extends SearchForCarsState {
  final List<CarEntity> cars;

  const SearchForCarsSuccess({required this.cars});

  @override
  List<Object> get props => [cars];
}
