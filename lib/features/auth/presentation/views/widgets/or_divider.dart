import 'package:flutter/material.dart';
import 'package:quent/core/utils/app_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: Color(0xFFD9D9D9))),
        const SizedBox(width: 20),
        Text(
          "Or",
          textAlign: TextAlign.center,
          style: AppStyles.regular14(
            context,
          ).copyWith(color: const Color(0xFF7F7F7F)),
        ),
        const SizedBox(width: 20),
        const Expanded(child: Divider(color: Color(0xFFD9D9D9))),
      ],
    );
  }
}
