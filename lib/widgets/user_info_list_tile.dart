import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserINfoListTile extends StatelessWidget {
  const UserINfoListTile({
    super.key,
    required this.items,
  });

  final UserInfoModel items;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(items.image),
          title: Text(items.title, style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(
            items.subtitle,
            style: AppStyles.styleRegular14(context).copyWith(
              color: const Color(0xFFAAAAAA),
            ),
          ),
        ),
      ),
    );
  }
}
