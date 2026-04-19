import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';

class RangeNumberWidget extends StatelessWidget {
  const RangeNumberWidget({
    super.key,
    required this.number,
    required this.label,
  });
  final int number;
  final String label;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            label,
            style: AppStyles.regular14(context).copyWith(
              color: const Color(0xFF7F7F7F),
              fontSize: 12,
              fontFamily: 'Roboto',
              height: 1.33,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 80,
            height: 40,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: const Color(0xFFD7D7D7)),
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            child: Center(
              child: Text(
                '\$$number',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 1.33,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
