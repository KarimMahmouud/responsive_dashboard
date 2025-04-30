import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_epenses_items_header_model.dart';

import 'package:responsive_dashboard/widgets/inactive_and_active_all_expenses_item.dart';

class AllExpensesItems extends StatelessWidget {
  const AllExpensesItems(
      {super.key, required this.allItemsModel, required this.isSelected});

  final AllExpensesItemsHeaderModel allItemsModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: isSelected
          ? Active(key: const ValueKey('Active'), allItemsModel: allItemsModel)
          : InActive(
              key: const ValueKey('InActive'), allItemsModel: allItemsModel),
    );
  }
}
