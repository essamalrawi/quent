part of 'brands_cubit.dart';

@immutable
sealed class BrandsState extends Equatable {
  List<Object?> get props => [];
}

final class BrandsInitial extends BrandsState {}

final class BrandsLoading extends BrandsState {}

final class BrandsFailure extends BrandsState {
  final String errorMessage;

  BrandsFailure({required this.errorMessage});
  @override
  List<Object?> get props => [errorMessage];
}

final class BrandsSuccess extends BrandsState {
  final List<BrandEntity> brands;

  BrandsSuccess({required this.brands});
  @override
  List<Object?> get props => [brands];
}
