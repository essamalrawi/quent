import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quent/features/auth/register/domain/use_cases/fetch_featured_register_countries_use_case.dart';
import '../../../../../../../core/entities/country_entity.dart';

part 'get_countries_state.dart';

class GetCountriesCubit extends Cubit<GetCountriesState> {
  GetCountriesCubit(this.featuredRegisterCountriesUseCase)
    : super(GetCountriesInitial());

  final FetchFeaturedRegisterCountriesUseCase featuredRegisterCountriesUseCase;

  Future<void> getCountries() async {
    emit(GetCountriesLoading());
    final result = await featuredRegisterCountriesUseCase.call();

    result.fold(
      (failure) {
        emit(GetCountriesFailure(errorMessage: failure.message));
      },
      (countries) {
        emit(GetCountriesSuccess(countries: countries));
      },
    );
  }
}
