import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/all_epenses_items_header_model.dart';

class AllExpensesItemsHeader extends StatelessWidget {
  const AllExpensesItemsHeader(
      {super.key,
      required this.allItemsModel,
      this.imageBackground,
      this.iamgeColor});

  final AllExpensesItemsHeaderModel allItemsModel;
  final Color? imageBackground, iamgeColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackground ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
              child: SvgPicture.asset(
            allItemsModel.image,
            colorFilter: ColorFilter.mode(
              iamgeColor ?? const Color(0xff4EB7F2),
              BlendMode.srcIn,
            ),
          )),
        ),
        const Expanded(child: SizedBox()),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: iamgeColor == null ? const Color(0xFF064061) : Colors.white,
        ),
      ],
    );
  }
}
