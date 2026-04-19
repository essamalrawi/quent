import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/features/main/search/presentation/widgets/price_range_widget.dart';
import 'package:quent/features/main/search/presentation/widgets/rental_time_widget.dart';
import 'package:quent/features/main/search/presentation/widgets/type_of_cars_filter.dart';
import 'package:quent/generated/assets.gen.dart';

void filterBottomSheet(BuildContext rootContext) {
  showModalBottomSheet(
    context: rootContext,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return SafeArea(
        top: false,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.95,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: SvgPicture.asset(Assets.images.icon.x),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Filters',
                            style: AppStyles.bold18(context).copyWith(),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Divider(color: Color(0xFFD7D7D7)),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TypeOfCarsFilter(),
                    ),
                    SizedBox(height: 28),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Color(0xFFD7D7D7),
                    ),
                    SizedBox(height: 28),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: PriceRangeWidget(),
                    ),
                    SizedBox(height: 28),
                    Divider(
                      indent: 20,
                      endIndent: 20,
                      color: Color(0xFFD7D7D7),
                    ),
                    SizedBox(height: 28),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: RentalTimeWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
