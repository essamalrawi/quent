import 'package:quent/generated/assets.gen.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
  });
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
  BottomNavigationBarEntity(
    activeImage: Assets.images.icon.activeHome,
    inActiveImage: Assets.images.icon.inactiveHome,
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.images.icon.activeSearch,
    inActiveImage: Assets.images.icon.inactiveSearch,
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.images.icon.activeInbox,
    inActiveImage: Assets.images.icon.inactiveInbox,
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.images.icon.activeNotifications,
    inActiveImage: Assets.images.icon.inactiveNotifications,
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.images.icon.activeUser,
    inActiveImage: Assets.images.icon.inactiveUser,
  ),
];
