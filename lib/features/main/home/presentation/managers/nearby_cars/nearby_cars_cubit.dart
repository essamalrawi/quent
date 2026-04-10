import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:quent/features/main/home/data/domain/repos/home_repo.dart';
import 'package:quent/features/shared_features/data/domain/entities/car_entity.dart';

part 'nearby_cars_state.dart';

class NearbyCarsCubit extends Cubit<NearbyCarsState> {
  NearbyCarsCubit(this.homeRepo) : super(NearbyCarsInitial());
  final HomeRepo homeRepo;
  Future<void> getNearbyCars() async {
    emit(NearbyCarsLoading());
    final results = await homeRepo.getNearestCars();
    results.fold(
      (left) {
        emit(NearbyCarsFaliure(errorMessage: left.message));
      },
      (right) {
        emit(NearbyCarsSuccess(cars: right));
      },
    );
  }
}
