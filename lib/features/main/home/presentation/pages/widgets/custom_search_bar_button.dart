import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/generated/assets.gen.dart';

class CustomSearchBarButton extends StatelessWidget {
  const CustomSearchBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,

      child: TextField(
        scrollPadding: EdgeInsets.zero,
        onSubmitted: (data) {
          // Navigator.pushNamed(context, SearchView.routeName);
        },
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.only(left: 20, right: 12),
            child: SizedBox(
              width: 20,
              height: 20,
              child: Center(
                child: SvgPicture.asset(Assets.images.icon.iconSearchBar),
              ),
            ),
          ),
          border: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),

          hint: const Text("Search your dream car....."),
          hintStyle: AppStyles.regular14(
            context,
          ).copyWith(fontSize: 12, color: const Color(0xff7F7F7F)),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(width: 1, color: Color(0xFFD7D7D7)),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
