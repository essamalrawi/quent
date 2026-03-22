import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';

class BestCarsSection extends StatelessWidget {
  const BestCarsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Best Cars",
                  style: AppStyles.semibold30(context).copyWith(fontSize: 16),
                ),
                const SizedBox(height: 18),
                Text(
                  "Available",
                  style: AppStyles.regular14(
                    context,
                  ).copyWith(color: const Color(0xff7F7F7F)),
                ),
              ],
            ),
            Text(
              "View All",
              style: AppStyles.regular14(
                context,
              ).copyWith(fontSize: 12, color: const Color(0xff7F7F7F)),
            ),
          ],
        ),
      ],
    );
  }
}
