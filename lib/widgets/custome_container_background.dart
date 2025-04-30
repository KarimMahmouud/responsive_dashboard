import 'package:flutter/material.dart';

class CustomeContainerBackground extends StatelessWidget {
  const CustomeContainerBackground({
    super.key,
    this.padding,
    required this.child,
  });

  final double? padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
