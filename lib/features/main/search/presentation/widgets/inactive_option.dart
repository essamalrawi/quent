import 'package:flutter/material.dart';

class InactiveOption extends StatelessWidget {
  const InactiveOption({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
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
          text,
          style: TextStyle(
            color: const Color(0xFF7F7F7F),
            fontSize: 12,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 1.33,
          ),
        ),
      ),
    );
  }
}
