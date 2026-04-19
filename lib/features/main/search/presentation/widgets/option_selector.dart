import 'package:flutter/material.dart';
import 'package:quent/features/main/search/presentation/widgets/active_option.dart';
import 'package:quent/features/main/search/presentation/widgets/inactive_option.dart';

class OptionSelector extends StatefulWidget {
  const OptionSelector({super.key, required this.options});
  final List<String> options;

  @override
  State<OptionSelector> createState() => _OptionSelectorState();
}

class _OptionSelectorState extends State<OptionSelector> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(widget.options.length, (index) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: widget.options.length == index ? 0 : 20,
              ),
              child: selectedIndex == index
                  ? ActiveOption(text: widget.options[index])
                  : InactiveOption(text: widget.options[index]),
            ),
          ),
        );
      }),
    );
  }
}
