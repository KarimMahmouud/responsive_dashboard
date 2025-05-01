import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransectionHistoryHeader extends StatelessWidget {
  const TransectionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: const Color(0xFF4EB7F2)),
          ),
        ),
      ],
    );
  }
}
