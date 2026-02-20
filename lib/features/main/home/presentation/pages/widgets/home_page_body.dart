import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              "MAIN PAGE",
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
          ),
        ),
      ],
    );
  }
}
