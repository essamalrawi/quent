import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';

class TypeOfCarsFilter extends StatelessWidget {
  const TypeOfCarsFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Type of Cars',
          style: AppStyles.regular16(context).copyWith(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
        SizedBox(height: 18),
        Container(
          height: 46,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: const Color(0xFFD7D7D7)),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Cars',
                  style: AppStyles.regular14(
                    context,
                  ).copyWith(color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Regular Cars',
                  style: AppStyles.regular14(
                    context,
                  ).copyWith(color: Colors.black, fontWeight: FontWeight.w500),
                ),
                Text(
                  'Luxury Cars',
                  style: AppStyles.regular14(
                    context,
                  ).copyWith(color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
