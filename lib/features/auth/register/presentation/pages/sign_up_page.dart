import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/features/auth/register/presentation/pages/widgets/sign_up_page_body.dart';

import '../manager/cubits/get_countries/get_countries_cubit.dart';
import '../manager/cubits/get_locations/get_locations_cubit.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  static const routeName = "sign-up-view";

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetCountriesCubit()),
        BlocProvider(create: (context) => GetLocationsCubit()),
      ],
      child: Scaffold(body: SignUpPageBody()),
    );
  }
}
