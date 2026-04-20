import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';

class ActiveColorPicker extends StatelessWidget {
  const ActiveColorPicker({
    super.key,
    required this.color,
    required this.colorName,
  });

  final Color color;
  final String colorName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFD7D7D7)),
          borderRadius: BorderRadius.circular(60),
        ),
      ),

      child: Row(
        mainAxisSize: MainAxisSize.min,
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
            child: Icon(
              Icons.check,
              color: color == Colors.black ? Colors.white : Colors.black,
              size: 20,
            ),
          ),
          SizedBox(width: 10),
          Text(
            colorName,
            style: AppStyles.regular14(context).copyWith(
              color: Colors.black,
              fontSize: 12,
              fontFamily: 'Roboto',
              height: 1.33,
            ),
          ),
        ],
      ),
    );
  }
}
