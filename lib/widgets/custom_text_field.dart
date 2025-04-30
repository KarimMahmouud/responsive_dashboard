import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xFF4EB7F2),
      decoration: InputDecoration(
        fillColor: const Color(0xFFFAFAFA),
        filled: true,
        hintText: hintText,
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xFFAAAAAA)),
        border: const OutlineInputBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFFAFAFA)),
      );
  }
}
