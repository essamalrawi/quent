import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/filter_search_widget.dart';
import 'package:quent/generated/assets.gen.dart';

class CustomSearchViewAppBar extends StatelessWidget {
  const CustomSearchViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: FilterSearchWidget(iconImage: Assets.images.icon.arrow),
        ),
        const Spacer(),
        Text("Search", style: AppStyles.bold18(context)),
        const Spacer(),
        FilterSearchWidget(iconImage: Assets.images.icon.dots),
      ],
    );
  }
}
