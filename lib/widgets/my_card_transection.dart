import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custome_container_background.dart';
import 'my_cards_section.dart';
import 'transaction_history.dart';

class MyCardTransection extends StatelessWidget {
  const MyCardTransection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomeContainerBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
