import 'package:flutter/material.dart';
import 'package:quent/features/on_boarding/presentation/pages/widgets/page_view_item.dart';
import 'package:quent/generated/l10n.dart';
import '../../../../../generated/assets.gen.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
    required this.pageController,
    required this.currentPage,
  });

  final PageController pageController;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          backgroundImage: Assets.images.onBoardingPageOne.path,
          // R.ASSETS_IMAGES_ON_BOARDING_PAGE_ONE_PNG,
          title: S.of(context).onboarding_title_1,
        ),
        PageViewItem(
          backgroundImage: Assets.images.onBoardingPageTwo.path,
          // R.ASSETS_IMAGES_ON_BOARDING_PAGE_TWO_PNG,
          title: S.of(context).onboarding_title_2,
          subtitle: S.of(context).onboarding_desc_2,
        ),
      ],
    );
  }
}
