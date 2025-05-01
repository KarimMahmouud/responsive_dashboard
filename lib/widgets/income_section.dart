import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custome_container_background.dart';

import 'all_expenses_header.dart';
import 'income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainerBackground(
      child: Column(
        children: [
          AllExpensesHeader(title: 'Income'),
          SizedBox(height: 16),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
