import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_dot.dart';

class Dots extends StatelessWidget {
  const Dots({
    super.key,
    required this.indexPage,
  });

  final int indexPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: CustomDot(isActive: indexPage == index),
        ),
      ),
    );
  }
}
