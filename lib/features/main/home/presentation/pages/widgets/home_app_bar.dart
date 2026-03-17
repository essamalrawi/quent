import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/notifications_widget.dart';
import 'package:quent/features/main/home/presentation/pages/widgets/profile_pic.dart';
import 'package:quent/generated/assets.gen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.images.icon.authViewLogo),
        Spacer(),
        NotificationsWidget(),
        const SizedBox(width: 15),
        ProfilePic(),
      ],
    );
  }
}
