import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'core/utils/app_styles.dart';


class UserInfo extends StatelessWidget {
  const UserInfo({super.key ,required this.name,required this.email});
  final String name,email;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: const Color(0xffFAFAFA)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/images/avatar_3.svg"),
          const SizedBox(width: 5),
          Column(
            children: [
              Text(name,style: AppStyles.styleSemiBold16(context)),
              const SizedBox(width: 7),
              Text(email,style: AppStyles.styleRegular12(context))
            ],
          ),
        ],
      ),
    );
  }
}