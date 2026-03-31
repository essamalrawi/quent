import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:quent/features/auth/register/domain/use_cases/fetch_featured_register_countries_use_case.dart';
import '../../../../../../shared_features/data/domain/entities/country_entity.dart';
part 'get_countries_state.dart';

class GetCountriesCubit extends Cubit<GetCountriesState> {
  GetCountriesCubit(this.featuredRegisterCountriesUseCase)
    : super(GetCountriesInitial());

  final FetchFeaturedRegisterCountriesUseCase featuredRegisterCountriesUseCase;

  Future<void> getCountries() async {
    if (isClosed) return;
    emit(GetCountriesLoading());
    final result = await featuredRegisterCountriesUseCase.call();

    result.fold(
      (failure) {
        if (isClosed) return;
        emit(GetCountriesFailure(errorMessage: failure.message));
      },
      (countries) {
        if (isClosed) return;
        emit(GetCountriesSuccess(countries: countries));
      },
    );
  }
}
