import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/features/main/search/presentation/widgets/active_color_picker.dart';
import 'package:quent/features/main/search/presentation/widgets/color_picker_selector.dart';
import 'package:quent/features/main/search/presentation/widgets/inactive_color_picker.dart';

class ColorsPicker extends StatelessWidget {
  const ColorsPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Text(
              "Colors",
              style: AppStyles.regular16(context).copyWith(
                color: Colors.black,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ),
            Text(
              'See All',
              style: AppStyles.regular14(context).copyWith(
                color: const Color(0xFF7F7F7F),
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                height: 1.14,
              ),
            ),
          ],
        ),
        SizedBox(height: 23),
        ColorPickerSelector(
          colorsName: ["White", "Black", "Red", "Blue", "Grey"],
          colors: [
            Colors.white,
            Colors.black,
            Colors.red,
            Colors.blue,
            Colors.grey,
          ],
        ),
      ],
    );
  }
}
