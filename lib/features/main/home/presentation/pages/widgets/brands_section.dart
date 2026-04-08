import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/features/main/home/data/domain/entities/brand_entity.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/brand_widget.dart';

class BrandsSection extends StatelessWidget {
  const BrandsSection({super.key, required this.brands});
  final List<BrandEntity> brands;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Brands",
          style: AppStyles.semibold30(context).copyWith(fontSize: 16),
        ),
        const SizedBox(height: 18),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(4, (index) {
            return BrandWidget(
              brandName: brands[index].name,
              image: brands[index].image,
            );
          }),
        ),
      ],
    );
  }
}
