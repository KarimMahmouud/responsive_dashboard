import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custome_drawer.dart';
import 'all_quick_section.dart';

class DashBoardDeskTopLayout extends StatelessWidget {
  const DashBoardDeskTopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2, child: SingleChildScrollView(child: AllQuickSection())),
        
      ],
    );
  }
}
