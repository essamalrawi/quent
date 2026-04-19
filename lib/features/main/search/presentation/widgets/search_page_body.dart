import 'package:flutter/material.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/custom_search_bar_button.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/filter_search_widget.dart';
import 'package:quent/features/main/search/presentation/widgets/car_brand_selector.dart';
import 'package:quent/features/main/search/presentation/widgets/custom_search_view_app_bar.dart';
import 'package:quent/features/main/search/presentation/widgets/filter_bottom_sheet.dart';
import 'package:quent/features/main/search/presentation/widgets/popular_car_container.dart';
import 'package:quent/features/main/search/presentation/widgets/recommend_car_card.dart';
import 'package:quent/features/main/search/presentation/widgets/section_header_row.dart';
import 'package:quent/generated/assets.gen.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const CustomSearchViewAppBar(),

                const SizedBox(height: 20),

                const Divider(color: Color(0xffD7D7D7)),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Expanded(child: CustomSearchBarButton()),
                    const SizedBox(width: 26),
                    GestureDetector(
                      onTap: () {
                        filterBottomSheet(context);
                      },
                      child: FilterSearchWidget(
                        iconImage: Assets.images.icon.filterIcon,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 28),

                const CarBrandSelector(),
                const SizedBox(height: 28),
                const SectionHeaderRow(text: "Recommend For You"),
                const SizedBox(height: 18),
              ],
            ),
          ),

          SliverGrid(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 200 / 279,
            ),
            delegate: SliverChildBuilderDelegate((
              BuildContext context,
              int index,
            ) {
              return const RecommendCarCard();
            }, childCount: 4),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 28)),
          const SliverToBoxAdapter(
            child: SectionHeaderRow(text: "Our Popular Cars"),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 18)),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: PopularCarContianer(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
