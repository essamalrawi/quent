import 'package:quent/core/utils/typedefs.dart';
import 'package:quent/features/shared_features/data/domain/entities/country_entity.dart';
import 'package:quent/features/auth/register/domain/repos/register_repo.dart';
import '../../../../../core/use_cases/use_cases.dart';

class FetchFeaturedRegisterCountriesUseCase
    extends UseCase<List<CountryEntity>, NoParam> {
  final RegisterRepo registerRepo;

  FetchFeaturedRegisterCountriesUseCase(this.registerRepo);

  @override
  ResultFuture<List<CountryEntity>> call([NoParam? param]) async {
    return await registerRepo.fetchCountries();
  }
}
