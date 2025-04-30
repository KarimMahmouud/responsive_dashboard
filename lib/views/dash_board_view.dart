import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/widgets/dash_board_desktop_layout.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const Center(
          child: Text('Mobile Layout'),
        ),
        tabletLayout: (context) => const Center(
          child: Text('Tablet Layout'),
        ),
        desktopLayout: (context) => const DashBoardDeskTopLayout(),
      ),
    );
  }
}
