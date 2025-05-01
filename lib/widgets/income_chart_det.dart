import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';

import 'item_details.dart';

class IncomeChartDet extends StatelessWidget {
  const IncomeChartDet({super.key});

  static const items = [
    ItemDetailsModel(
        color: Color(0xFF208CC8), leading: 'Design service', trailing: '40%'),
    ItemDetailsModel(
        color: Color(0xFF4EB7F2), leading: 'Design product', trailing: '25%'),
    ItemDetailsModel(
        color: Color(0xFF064061), leading: 'Product royalti', trailing: '20%'),
    ItemDetailsModel(
        color: Color(0xFFE2DECD), leading: 'Other', trailing: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e)).toList(),
    );
    // return ListView.builder(
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return ItemDetails(itemDetailsModel: items[index]);
    //   },
    // );
  }
}
