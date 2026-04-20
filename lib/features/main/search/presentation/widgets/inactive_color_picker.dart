import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';

class InactiveColorPicker extends StatelessWidget {
  const InactiveColorPicker({
    super.key,
    required this.color,
    required this.colorName,
  });
  final Color color;
  final String colorName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: const Color(0xFFD7D7D7)),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          colorName,
          style: AppStyles.regular14(context).copyWith(
            color: const Color(0xFF7F7F7F),
            fontSize: 12,
            fontFamily: 'Roboto',
            height: 1.33,
          ),
        ),
      ],
    );
  }
}
