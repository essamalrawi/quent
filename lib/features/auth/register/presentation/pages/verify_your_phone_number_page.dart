import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/verify_your_phone_number_page_body.dart';
import '../manager/cubits/get_countries/get_countries_cubit.dart';
import '../manager/cubits/verify_phone_number/verify_phone_number_cubit.dart'
    show VerifyPhoneNumberCubit;

class VerifyYourPhoneNumberPage extends StatelessWidget {
  const VerifyYourPhoneNumberPage({super.key});

  static const routeName = 'verify-number';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetCountriesCubit()..getCountries()),
        BlocProvider(create: (context) => VerifyPhoneNumberCubit()),
      ],
      child: const Scaffold(
        body: SafeArea(child: VerifyYourPhoneNumberPageBody()),
      ),
    );
  }
}
