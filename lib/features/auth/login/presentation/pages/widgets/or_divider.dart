import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/generated/l10n.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: Color(0xFFD9D9D9))),
        const SizedBox(width: 20),
        Text(
          S.of(context).or_continue_with,
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
