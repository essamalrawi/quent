import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:quent/core/utils/api_service.dart';
import 'package:quent/features/auth/login/data/data_sources/login_remote_data_source.dart';
import 'package:quent/features/auth/login/data/repos/login_repo_impl.dart';
import 'package:quent/features/auth/passwords/data/data_sources/password_remote_data_source.dart';
import 'package:quent/features/auth/passwords/data/repos/password_repo_impl.dart';
import 'package:quent/features/auth/register/data/data_sources/register_remote_data_source.dart';
import 'package:quent/features/auth/register/data/repos/register_repo_impl.dart';
import 'package:quent/features/auth/register/domain/use_cases/fetch_featured_register_countries_use_case.dart';
import 'package:quent/features/auth/register/domain/use_cases/fetch_featured_register_locations_use_case.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  // Auth

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
  getIt.registerSingleton<FetchFeaturedRegisterLocationsUseCase>(
    FetchFeaturedRegisterLocationsUseCase(getIt.get<RegisterRepoImpl>()),
  );

  // Login featured
  getIt.registerSingleton<LoginRemoteDataSourceImpl>(
    LoginRemoteDataSourceImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<LoginRepoImpl>(
    LoginRepoImpl(getIt.get<LoginRemoteDataSourceImpl>()),
  );

  // Password featured
  getIt.registerSingleton<PasswordRemoteDataSourceImpl>(
    PasswordRemoteDataSourceImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<PasswordRepoImpl>(
    PasswordRepoImpl(getIt.get<PasswordRemoteDataSourceImpl>()),
  );
}
