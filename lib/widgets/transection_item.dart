import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../models/transection_model.dart';

class TransectionItem extends StatelessWidget {
  const TransectionItem({
    super.key,
    required this.transactionModel,
  });

  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          color: const Color(0xFFFAFAFA),
          elevation: 0,
          child: Center(
            child: ListTile(
              title: Text(transactionModel.title,
                  style: AppStyles.styleSemiBold16(context)),
              subtitle: Text(
                transactionModel.suntitle,
                style: AppStyles.styleRegular16(context).copyWith(
                  color: const Color(0xFFAAAAAA),
                ),
              ),
              trailing: Text(
                transactionModel.amount,
                style: AppStyles.styleSemiBold20(context).copyWith(
                  color: transactionModel.color
                      ? const Color(0xFFF3735E)
                      : const Color(0xFF7DD97B),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
