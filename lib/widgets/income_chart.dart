import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

int index = -1;

class _IncomeChartState extends State<IncomeChart> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (event, response) {
          index = response?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: index == 0 ? 40 : 30,
          showTitle: false,
          value: 40,
          color: const Color(0xFF208CC8),
        ),
        PieChartSectionData(
          radius: index == 1 ? 40 : 30,
          showTitle: false,
          value: 25,
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          radius: index == 2 ? 40 : 30,
          showTitle: false,
          value: 20,
          color: const Color(0xFF064061),
        ),
        PieChartSectionData(
          radius: index == 3 ? 40 : 30,
          showTitle: false,
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
