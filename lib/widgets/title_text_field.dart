import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.titleText,
    required this.hintText,
  });
  final String titleText, hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        CustomTextField(hintText: hintText),
      ],
    );
  }
}
