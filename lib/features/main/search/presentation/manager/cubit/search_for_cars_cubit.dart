import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quent/features/main/search/data/domain/repos/search_repo.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';

part 'search_for_cars_state.dart';

class SearchForCarsCubit extends Cubit<SearchForCarsState> {
  SearchForCarsCubit(this.searchRepo) : super(SearchForCarsInitial());

  final SearchRepo searchRepo;
  Future<void> getNearbyCars({
    String? query,
    String? carType,
    String? brandId,
    String? type,
    String? locationId,
    String? colorId,
    String? seatingCapacity,
    String? fuelType,
  }) async {
    emit(SearchForCarsLoading());
    final results = await searchRepo.searchForCars();
    results.fold(
      (left) {
        emit(SearchForCarsFaliure(errorMessage: left.message));
      },
      (right) {
        emit(SearchForCarsSuccess(cars: right));
      },
    );
  }
}
