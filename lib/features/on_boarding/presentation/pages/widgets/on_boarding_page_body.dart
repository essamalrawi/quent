import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../../../../core/components/buttons/custom_button.dart';
import '../../../../../generated/assets.gen.dart';
import '../../../../auth/login/presentation/pages/sign_in_page.dart';
import 'on_boarding_page_view.dart';

class OnBoardingPageBody extends StatefulWidget {
  const OnBoardingPageBody({super.key});

  @override
  State<OnBoardingPageBody> createState() => _OnBoardingPageBodyState();
}

class _OnBoardingPageBodyState extends State<OnBoardingPageBody> {
  late PageController pageController;

  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              OnBoardingPageView(
                currentPage: currentPage,
                pageController: pageController,
              ),
              Positioned(
                top: 30,
                left: 24,
                child: SizedBox(
                  height: 65,
                  width: 65,
                  child: Image.asset(
                    Assets.images.logo.path,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 18,
                left: 18,
                bottom: 145,
                child: DotsIndicator(
                  dotsCount: 2,
                  position: pageController.hasClients
                      ? pageController.page ?? currentPage.toDouble()
                      : currentPage.toDouble(),
                  decorator: const DotsDecorator(
                    size: Size.square(9.0),
                    activeSize: Size(18.0, 9.0),
                    spacing: EdgeInsets.symmetric(horizontal: 4),
                    activeShape: StadiumBorder(),
                    color: Colors.white,
                    activeColor: Color(0xff9CA3AF),
                  ),
                ),
              ),
              Positioned(
                right: 18,
                left: 18,
                bottom: 55,
                child: CustomButton(
                  text: "Get Started",
                  onPressed: () {
                    // Prefs.setBool(kIsOnBoardingViewSeen, true);
                    Navigator.pushReplacementNamed(
                      context,
                      SignInView.routeName,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
