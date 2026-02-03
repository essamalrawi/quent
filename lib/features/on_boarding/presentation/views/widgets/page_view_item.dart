import 'package:flutter/material.dart';
import 'package:quent/core/utils/app_styles.dart';

import '../../../../../const/resource.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.backgroundImage,
    this.subtitle,
    required this.title,
  });

  final String backgroundImage;
  final String? subtitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsetsGeometry.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: false,
                    maintainSize: true,
                    maintainAnimation: true,
                    maintainState: true,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 65,
                          width: 65,
                          child: Image.asset(
                            R.ASSETS_IMAGES_LOGO_PNG,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 48),
                      ],
                    ),
                  ),

                  Text(
                    title,
                    style: AppStyles.semibold40(
                      context,
                    ).copyWith(color: Colors.white),
                  ),
                ],
              ),
              const Spacer(),

              subtitle != null && subtitle!.isNotEmpty
                  ? Text(
                      subtitle!,
                      style: AppStyles.regular16(
                        context,
                      ).copyWith(color: Colors.white),
                    )
                  : const SizedBox(),

              const SizedBox(height: 55),

              const SizedBox(height: 40),
              const Visibility(
                visible: false,
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                child: Column(
                  children: [
                    CustomButton(text: "Get Started"),
                    SizedBox(height: 55),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
