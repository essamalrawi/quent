import 'package:dartz/dartz.dart';
import 'package:quent/core/entities/country_entity.dart';
import 'package:quent/features/auth/register/domain/repos/register_repo.dart';
import '../../../../../core/errors/faluire.dart';
import '../../../../../core/use_cases/use_cases.dart';

class FetchFeaturedRegisterCountriesUseCase
    extends UseCase<List<CountryEntity>, int> {
  final RegisterRepo registerRepo;

  FetchFeaturedRegisterCountriesUseCase(this.registerRepo);

  @override
  Future<Either<Failure, List<CountryEntity>>> call([int param = 0]) async {
    return await registerRepo.fetchCountries();
  }
}
