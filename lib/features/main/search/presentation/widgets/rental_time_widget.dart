import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/features/main/search/presentation/widgets/option_selector.dart';

class RentalTimeWidget extends StatelessWidget {
  const RentalTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Rental Time',
          style: AppStyles.regular16(context).copyWith(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
        SizedBox(height: 18),
        OptionSelector(options: ["Hour", "Day", "Weekly", "Monthly"]),
      ],
    );
  }
}
