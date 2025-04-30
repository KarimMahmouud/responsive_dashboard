import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

import 'custom_button.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                titleText: 'Customer name',
                
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                titleText: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                titleText: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                titleText: 'Item mount',
                hintText: 'USD ^',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backGroundColor: Colors.white,
                text: 'Add more details',
                textColor: Color(0xFF4DB7F2),
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(),
            ),
          ],
        ),
      ],
    );
  }
}
