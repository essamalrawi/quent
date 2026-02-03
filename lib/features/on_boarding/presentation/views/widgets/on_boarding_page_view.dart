import 'package:flutter/material.dart';
import 'package:quent/features/on_boarding/presentation/views/widgets/page_view_item.dart';

import '../../../../../const/resource.dart';

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
        const PageViewItem(
          backgroundImage: R.ASSETS_IMAGES_ON_BOARDING_PAGE_ONE_PNG,
          title: 'Welcome to\nQent',
        ),
        const PageViewItem(
          backgroundImage: R.ASSETS_IMAGES_ON_BOARDING_PAGE_TWO_PNG,
          title: 'Lets Start\nA New Experience\nWith Car rental.',
          subtitle:
              'Discover your next adventure with Qent. we’re here to provide you with a seamless car rental experience. Let’s get started on your journey.',
        ),
      ],
    );
  }
}
