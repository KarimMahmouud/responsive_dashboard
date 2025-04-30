import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_epenses_items_header_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_items.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    const AllExpensesItemsHeaderModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemsHeaderModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemsHeaderModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () => setState(() {
                selectedIndex = index;
              }),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesItems(
                  isSelected: selectedIndex == index,
                  allItemsModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () => setState(() {
                selectedIndex = index;
              }),
              child: AllExpensesItems(
                isSelected: selectedIndex == index,
                allItemsModel: item,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
