import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';

class InactiveTypeOfCars extends StatelessWidget {
  const InactiveTypeOfCars({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: SizedBox(
        height: 46,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: AppStyles.regular14(
              context,
            ).copyWith(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
