import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quent/features/auth/register/domain/use_cases/fetch_featured_register_locations_use_case.dart';

import '../../../../../../../core/entities/location_entity.dart';

part 'get_locations_state.dart';

class GetLocationsCubit extends Cubit<GetLocationsState> {
  GetLocationsCubit(this.fetchFeaturedRegisterLocationsUseCase)
    : super(GetLocationsInitial());

  final FetchFeaturedRegisterLocationsUseCase
  fetchFeaturedRegisterLocationsUseCase;

  Future<void> getLocations() async {
    if (isClosed) return;
    emit(GetLocationsLoading());
    final result = await fetchFeaturedRegisterLocationsUseCase.call();

    result.fold(
      (failure) {
        if (isClosed) return;
        emit(GetLocationsFailure(errorMessage: failure.message));
      },
      (locations) {
        if (isClosed) return;
        emit(GetLocationsSuccess(locations: locations));
      },
    );
  }
}
