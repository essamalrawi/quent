import 'package:flutter/material.dart';
import 'package:quent/features/main/search/presentation/widgets/active_color_picker.dart';
import 'package:quent/features/main/search/presentation/widgets/inactive_color_picker.dart';

class ColorPickerSelector extends StatefulWidget {
  const ColorPickerSelector({
    super.key,
    required this.colorsName,
    required this.colors,
  });
  final List<String> colorsName;
  final List<Color> colors;

  @override
  State<ColorPickerSelector> createState() => _ColorPickerSelectorState();
}

class _ColorPickerSelectorState extends State<ColorPickerSelector> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.colorsName.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: widget.colorsName.length == index ? 0 : 20,
              ),
              child: selectedIndex == index
                  ? ActiveColorPicker(
                      color: widget.colors[index],
                      colorName: widget.colorsName[index],
                    )
                  : InactiveColorPicker(
                      color: widget.colors[index],
                      colorName: widget.colorsName[index],
                    ),
            ),
          );
        },
      ),
    );

    return Row(
      children: List.generate(widget.colorsName.length, (index) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: widget.colorsName.length == index ? 0 : 20,
              ),
              child: selectedIndex == index
                  ? ActiveColorPicker(
                      color: widget.colors[index],
                      colorName: widget.colorsName[index],
                    )
                  : InactiveColorPicker(
                      color: widget.colors[index],
                      colorName: widget.colorsName[index],
                    ),
            ),
          ),
        );
      }),
    );
  }
}
