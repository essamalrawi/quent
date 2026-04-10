import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:quent/core/utils/api_service.dart';
import 'package:quent/features/auth/login/data/data_sources/login_remote_data_source.dart';
import 'package:quent/features/auth/login/data/repos/login_repo_impl.dart';
import 'package:quent/features/auth/login/domain/use_cases/sign_in_use_case.dart';
import 'package:quent/features/auth/passwords/data/data_sources/password_remote_data_source.dart';
import 'package:quent/features/auth/passwords/data/repos/password_repo_impl.dart';
import 'package:quent/features/auth/passwords/domain/use_cases/forgot_password_use_case.dart';
import 'package:quent/features/auth/passwords/domain/use_cases/reset_password_use_case.dart';
import 'package:quent/features/auth/register/data/data_sources/register_remote_data_source.dart';
import 'package:quent/features/auth/register/data/repos/register_repo_impl.dart';
import 'package:quent/features/auth/register/domain/use_cases/confirm_verify_code_use_case.dart';
import 'package:quent/features/auth/register/domain/use_cases/fetch_featured_register_countries_use_case.dart';
import 'package:quent/features/auth/register/domain/use_cases/fetch_featured_register_locations_use_case.dart';
import 'package:quent/features/auth/register/domain/use_cases/request_verify_code_use_case.dart';
import 'package:quent/features/auth/register/domain/use_cases/sign_up_use_case.dart';
import 'package:quent/features/main/home/data/data_sources/home_remote_data_source.dart';
import 'package:quent/features/main/home/data/data_sources/repos/home_repo_impl.dart';
import 'package:quent/features/main/home/data/domain/repos/home_repo.dart';

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
  getIt.registerSingleton<SignUpUseCase>(
    SignUpUseCase(getIt.get<RegisterRepoImpl>()),
  );
  getIt.registerSingleton<RequestVerifyCodeUseCase>(
    RequestVerifyCodeUseCase(registerRepo: getIt.get<RegisterRepoImpl>()),
  );
  getIt.registerSingleton<ConfirmVerifyCodeUseCase>(
    ConfirmVerifyCodeUseCase(registerRepo: getIt.get<RegisterRepoImpl>()),
  );

  // Login featured
  getIt.registerSingleton<LoginRemoteDataSourceImpl>(
    LoginRemoteDataSourceImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<LoginRepoImpl>(
    LoginRepoImpl(getIt.get<LoginRemoteDataSourceImpl>()),
  );
  getIt.registerSingleton<SignInUseCase>(
    SignInUseCase(getIt.get<LoginRepoImpl>()),
  );

  // Password featured
  getIt.registerSingleton<PasswordRemoteDataSourceImpl>(
    PasswordRemoteDataSourceImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<PasswordRepoImpl>(
    PasswordRepoImpl(getIt.get<PasswordRemoteDataSourceImpl>()),
  );
  getIt.registerSingleton<ForgotPasswordUseCase>(
    ForgotPasswordUseCase(passwordRepo: getIt.get<PasswordRepoImpl>()),
  );
  getIt.registerSingleton<ResetPasswordUseCase>(
    ResetPasswordUseCase(passwordRepo: getIt.get<PasswordRepoImpl>()),
  );

  // Home featured
  getIt.registerSingleton<HomeRemoteDataSourceImpl>(
    HomeRemoteDataSourceImpl(getIt.get<ApiService>()),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeRemoteDataSourceImpl: getIt.get<HomeRemoteDataSourceImpl>(),
    ),
  );
}
