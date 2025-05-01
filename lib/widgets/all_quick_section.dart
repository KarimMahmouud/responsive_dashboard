import 'package:flutter/material.dart';

import 'all_expenses.dart';
import 'quick_invoice.dart';

class AllQuickSection extends StatelessWidget {
  const AllQuickSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
        SizedBox(height: 40),
      ],
    );
  }
}
