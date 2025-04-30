import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.backGroundColor,
    this.text,
    this.textColor,
  });
  final Color? backGroundColor, textColor;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backGroundColor ?? const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        child: Text(
          text ?? 'Send money',
          style: AppStyles.styleSemiBold16(context).copyWith(
            color: textColor ?? Colors.white,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
