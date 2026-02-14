import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/register/domain/use_cases/fetch_featured_register_locations_use_case.dart';
import 'package:quent/features/auth/register/presentation/pages/widgets/sign_up_page_body.dart';
import '../../../../../core/services/get_it_service.dart';
import '../../domain/use_cases/fetch_featured_register_countries_use_case.dart';
import '../manager/cubits/get_countries/get_countries_cubit.dart';
import '../manager/cubits/get_locations/get_locations_cubit.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static const routeName = "sign-up-view";

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetCountriesCubit(
            getIt.get<FetchFeaturedRegisterCountriesUseCase>(),
          )..getCountries(),
        ),
        BlocProvider(
          create: (context) => GetLocationsCubit(
            getIt.get<FetchFeaturedRegisterLocationsUseCase>(),
          )..getLocations(),
        ),
      ],
      child: Scaffold(body: SignUpPageBody()),
    );
  }
}
