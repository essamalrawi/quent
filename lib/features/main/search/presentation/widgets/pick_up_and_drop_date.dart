import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quent/core/resources/app_styles.dart';
import 'package:quent/generated/assets.gen.dart';

class PickUpAndDropDate extends StatefulWidget {
  const PickUpAndDropDate({super.key});

  @override
  State<PickUpAndDropDate> createState() => _PickUpAndDropDateState();
}

class _PickUpAndDropDateState extends State<PickUpAndDropDate> {
  String date = DateTime.now().toString().split(' ')[0].toString();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Pick up and Drop Date',
          style: AppStyles.regular14(context).copyWith(
            color: Colors.black,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            height: 1.14,
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () async {
            final now = DateTime.now();

            final pickedDate = await showDatePicker(
              context: context,
              initialDate: now,
              firstDate: now,
              lastDate: DateTime(now.year, 12, 31),
              builder: (context, child) {
                return Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: const ColorScheme.light(
                      primary: Colors.black,
                      onPrimary: Colors.white,
                      onSurface: Colors.black,
                    ),
                  ),
                  child: child!,
                );
              },
            );
            if (!context.mounted) return;
            if (pickedDate != null) {
              date = "${pickedDate.day}-${pickedDate.month}-${pickedDate.year}";
              setState(() {});
            }
          },
          child: Row(
            children: [
              SvgPicture.asset(Assets.images.icon.calender),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Text(
                  date,
                  style: AppStyles.regular14(context).copyWith(
                    color: const Color(0xFF7F7F7F),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 1.14,
                  ),
                ),
              ),
              SvgPicture.asset(Assets.images.icon.downArrow),
            ],
          ),
        ),
      ],
    );
  }
}
