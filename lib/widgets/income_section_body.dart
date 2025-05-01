import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';

import 'income_chart_det.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex: 2, child: IncomeChartDet()),
      ],
    );
  }
}
