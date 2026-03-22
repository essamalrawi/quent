import 'package:flutter/material.dart';
import 'package:quent/features/main/search/presentation/widgets/selector_switcher.dart';
import 'package:quent/generated/assets.gen.dart';

class TestEntity {
  final String image, text;
  TestEntity({required this.image, required this.text});
}

List<TestEntity> t = [
  TestEntity(image: Assets.images.icon.allBrands.path, text: "All"),
  TestEntity(image: Assets.images.testBmw.path, text: "BMW"),
  TestEntity(image: Assets.images.testBmw.path, text: "BMW"),
  TestEntity(image: Assets.images.testBmw.path, text: "BMW"),
  TestEntity(image: Assets.images.testBmw.path, text: "BMW"),
  TestEntity(image: Assets.images.testBmw.path, text: "BMW"),
  TestEntity(image: Assets.images.testBmw.path, text: "BMW"),
  TestEntity(image: Assets.images.testBmw.path, text: "BMW"),
  TestEntity(image: Assets.images.testBmw.path, text: "BMW"),
];

class CarBrandSelector extends StatefulWidget {
  const CarBrandSelector({super.key});

  @override
  State<CarBrandSelector> createState() => _CarBrandSelectorState();
}

class _CarBrandSelectorState extends State<CarBrandSelector> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: t.length,
        itemBuilder: (cotnext, index) {
          //  return const UnActiveSelector();

          return GestureDetector(
            onTap: () {
              activeIndex = index;
              setState(() {});
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: SelectorSwitcher(
                isActive: index == activeIndex,
                image: t[index].image,
                text: t[index].text,
              ),
            ),
          );
        },
      ),
    );
  }
}
