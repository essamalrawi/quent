import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quent/core/services/get_it_service.dart';
import 'package:quent/features/main/home/data/data_sources/repos/home_repo_impl.dart';
import 'package:quent/features/main/home/presentation/managers/best_cars/best_cars_cubit.dart';
import 'package:quent/features/main/home/presentation/managers/brands/brands_cubit.dart';
import 'package:quent/features/main/home/presentation/managers/nearby_cars/nearby_cars_cubit.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = "home";

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BrandsCubit(getIt.get<HomeRepoImpl>())..getBrands(),
        ),
        BlocProvider(
          create: (context) =>
              BestCarsCubit(getIt.get<HomeRepoImpl>())..getBestCars(),
        ),
        BlocProvider(
          create: (context) =>
              NearbyCarsCubit(getIt.get<HomeRepoImpl>())..getNearbyCars(),
        ),
      ],

      child: Scaffold(extendBody: true, body: SafeArea(child: HomePageBody())),
    );
  }
}
