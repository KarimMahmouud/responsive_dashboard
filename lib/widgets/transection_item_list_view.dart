import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transection_item.dart';

import '../models/transection_model.dart';

class TransectionItemListView extends StatelessWidget {
  const TransectionItemListView({super.key});

  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      suntitle: '13 Apr, 2022',
      amount: r'$20,129',
      color: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      suntitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      color: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      suntitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      color: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransectionItem(transactionModel: e)).toList(),
    );
    // ListView.builder(
    //   itemCount: items.length,
    //   shrinkWrap: true,
    //   itemBuilder: (context, index) {
    //     return TransectionItem(
    //       transactionModel: items[index],
    //     );
    //   },
    // );
  }
}
