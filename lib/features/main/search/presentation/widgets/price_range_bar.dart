import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PriceRangeBar extends StatefulWidget {
  const PriceRangeBar({super.key});

  @override
  State<PriceRangeBar> createState() => _PriceRangeBarState();
}

class _PriceRangeBarState extends State<PriceRangeBar> {
  final List<double> values = [
    2,
    1,
    3,
    5,
    4,
    6,
    3,
    7,
    2,
    4,
    1,
    3,
    5,
    6,
    2,
    3,
    7,
    8,
    4,
    2,
    6,
    5,
    3,
    2,
    4,
    6,
    7,
    3,
    2,
    5,
    6,
    4,
    3,
    7,
    5,
    2,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.center,
          titlesData: FlTitlesData(show: false),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          barGroups: List.generate(values.length, (index) {
            return BarChartGroupData(
              x: index,
              barRods: [
                BarChartRodData(
                  color: Color(0xFF21292B),
                  toY: values[index],
                  width: 6.49,
                  borderRadius: BorderRadius.circular(1),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
