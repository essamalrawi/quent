import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:quent/core/utils/api_service.dart';
import 'package:quent/features/auth/register/data/data_sources/register_remote_data_source.dart';
import 'package:quent/features/auth/register/data/repos/register_repo_impl.dart';
import 'package:quent/features/auth/register/domain/use_cases/fetch_featured_register_countries_use_case.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  // Register featured
  getIt.registerSingleton<RegisterRemoteDataSourceImpl>(
    RegisterRemoteDataSourceImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<RegisterRepoImpl>(
    RegisterRepoImpl(getIt.get<RegisterRemoteDataSourceImpl>()),
  );
  getIt.registerSingleton<FetchFeaturedRegisterCountriesUseCase>(
    FetchFeaturedRegisterCountriesUseCase(getIt.get<RegisterRepoImpl>()),
  );
}
