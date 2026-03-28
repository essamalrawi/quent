import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:quent/core/entities/car_entity.dart';

part 'best_cars_state.dart';

class BestCarsCubit extends Cubit<BestCarsState> {
  BestCarsCubit() : super(BestCarsInitial());

  // final HomeRepo homeRepo;

  Future<void> getBestCars() async {
    emit(BestCarsLoading());
    // final result = await homeRepo.getBestCars();
    // result.fold((failure) => emit(BestCarsFailure(failure.message)), (cars) {
    //   emit(BestCarsSuccess(cars: cars));
    // });
  }
}
