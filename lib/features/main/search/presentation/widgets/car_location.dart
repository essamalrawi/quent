import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/features/main/search/presentation/widgets/car_location_custom_text_field.dart';

class CarLocation extends StatelessWidget {
  const CarLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Car Location",
          style: AppStyles.regular14(context).copyWith(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 1.14,
          ),
        ),
        SizedBox(height: 18),
        CarLocationCustomTextField(),
      ],
    );
  }
}
