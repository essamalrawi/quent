import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quent/generated/assets.gen.dart';

class CarLocationCustomTextField extends StatelessWidget {
  const CarLocationCustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            width: 20,
            height: 20,
            child: SvgPicture.asset(
              Assets.images.icon.location,
              fit: BoxFit.contain,
            ),
          ),
        ),
        hintText: "Shore Dr, Chicago 0062 Usa",
        hintStyle: TextStyle(color: Color(0xFF7F7F7F), fontSize: 14),
        border: outlineInputBorder(),
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Color(0xFFD7D7D7)),
    );
  }
}
