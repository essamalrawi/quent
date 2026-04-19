import 'package:flutter/material.dart';
import 'package:quent/features/main/search/presentation/widgets/price_range_bar.dart';

class PriceRangeWidget extends StatefulWidget {
  const PriceRangeWidget({super.key});

  @override
  State<PriceRangeWidget> createState() => _PriceRangeWidgetState();
}

class _PriceRangeWidgetState extends State<PriceRangeWidget> {
  RangeValues _values = const RangeValues(20, 80);
  double start = 20;
  double end = 80;
  double minValue = 0;
  double maxValue = 230;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Price range',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
        SizedBox(height: 18),
        PriceRangeBar(),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 0,
            thumbColor: Colors.white,
            overlayShape: SliderComponentShape.noOverlay,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 30),
          ),
          child: RangeSlider(
            values: _values,
            min: 0,
            max: 100,
            onChanged: (values) {
              setState(() => _values = values);
              minValue = values.start;
              maxValue = values.end;
            },
          ),
        ),
      ],
    );
  }
}
