import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quent/features/main/home/presentation/managers/brands/brands_cubit.dart';
import 'package:quent/features/main/home/presentation/managers/nearby_cars/nearby_cars_cubit.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/best_cars_list_view.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/best_cars_section.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/brands_section.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/car_selectiong_container.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/custom_search_bar_button.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/filter_search_widget.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/home_app_bar.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/nearby_car.dart';
import 'package:quent/generated/assets.gen.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: HomeAppBar(),
              ),
              SizedBox(height: 22),
              Divider(color: Color(0xFFD7D7D7)),
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(child: CustomSearchBarButton()),
                    SizedBox(width: 26),
                    FilterSearchWidget(
                      iconImage: Assets.images.icon.filterIcon,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),

              BlocBuilder<BrandsCubit, BrandsState>(
                builder: (context, state) {
                  if (state is BrandsSuccess) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: BrandsSection(brands: state.brands),
                    );
                  } else {
                    return const Text("Still loading");
                  }
                },
              ),

              const SizedBox(height: 28),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: CarInfoContainer(
            widget: Padding(
              padding: EdgeInsets.all(20),

              child: Column(
                children: [
                  BestCarsSection(),
                  SizedBox(height: 50),
                  BestCarsListView(),
                ],
              ),
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: CarInfoContainer(
            widget: Padding(
              padding: const EdgeInsets.all(20),
              child: BlocBuilder<NearbyCarsCubit, NearbyCarsState>(
                builder: (context, state) {
                  if (state is NearbyCarsSuccess) {
                    return NearbyCar(car: state.cars[0]);
                  } else if (state is NearbyCarsFaliure) {
                    return Text(state.errorMessage);
                  } else {
                    return const SpinKitFadingCircle(
                      color: Colors.black,
                      size: 50.0,
                    );
                  }
                },
              ),
            ),
          ),
        ),

        SliverFillRemaining(
          hasScrollBody: false,
          child: Container(color: Colors.white),
        ),
      ],
    );
  }
}
