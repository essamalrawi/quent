import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../../../core/entities/location_entity.dart';

part 'get_locations_state.dart';

class GetLocationsCubit extends Cubit<GetLocationsState> {
  GetLocationsCubit() : super(GetLocationsInitial());

  // final AuthRepo authRepo;

  Future<void> getLocations() async {
    emit(GetLocationsLoading());
    // final result = await authRepo.getLocations();
    //
    // result.fold(
    //   (failure) {
    //     emit(GetLocationsFailure(errorMessage: failure.message));
    //   },
    //   (locations) {
    //     emit(GetLocationsSuccess(locations: locations));
    //   },
    // );
  }
}
