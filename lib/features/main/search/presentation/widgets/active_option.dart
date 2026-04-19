import 'package:flutter/material.dart';

class ActiveOption extends StatelessWidget {
  const ActiveOption({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: ShapeDecoration(
        color: Colors.black,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFD7D7D7)),
          borderRadius: BorderRadius.circular(60),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
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
