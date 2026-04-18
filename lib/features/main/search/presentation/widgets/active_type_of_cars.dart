import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';

class ActiveTypeOfCars extends StatelessWidget {
  const ActiveTypeOfCars({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(46),
        color: Colors.black,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppStyles.regular14(
            context,
          ).copyWith(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
