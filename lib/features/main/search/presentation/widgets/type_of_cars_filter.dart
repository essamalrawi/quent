import 'package:flutter/material.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/features/main/search/presentation/widgets/active_type_of_cars.dart';
import 'package:quent/features/main/search/presentation/widgets/inactive_type_of_cars.dart';

class TypeOfCarsFilter extends StatefulWidget {
  const TypeOfCarsFilter({super.key});

  @override
  State<TypeOfCarsFilter> createState() => _TypeOfCarsFilterState();
}

class _TypeOfCarsFilterState extends State<TypeOfCarsFilter> {
  int selectedIndex = 0;
  List<String> carTypes = ['All Cars', 'Regular Cars', 'Luxury Cars'];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Type of Cars',
          style: AppStyles.regular16(context).copyWith(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
        SizedBox(height: 18),
        Container(
          height: 46,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: const Color(0xFFD7D7D7)),
              borderRadius: BorderRadius.circular(60),
            ),
          ),
          child: Row(
            children: List.generate(carTypes.length, (index) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: index == selectedIndex
                      ? ActiveTypeOfCars(text: carTypes[index])
                      : InactiveTypeOfCars(text: carTypes[index]),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
