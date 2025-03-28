import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invoicing_dashboard/models/user_info_model.dart';

import 'core/utils/app_styles.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.all(12),
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
        children: [
          SvgPicture.asset(userInfoModel.pathImage),
          const SizedBox(width: 12),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(userInfoModel.name,style: AppStyles.styleMedium16(context)),
              const SizedBox(height: 6),
              Text(userInfoModel.email,style: AppStyles.styleRegular14(context))
            ],
          )
        ],
      ),
    );
  }
}
