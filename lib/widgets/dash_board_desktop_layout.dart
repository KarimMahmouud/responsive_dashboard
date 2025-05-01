import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custome_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'all_quick_section.dart';
import 'my_card_transection.dart';

class DashBoardDeskTopLayout extends StatelessWidget {
  const DashBoardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(child: AllQuickSection()),
        ),
        SizedBox(width: 24),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                MyCardTransection(),
                SizedBox(height: 24),
                IncomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
