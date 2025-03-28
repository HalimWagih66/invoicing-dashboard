import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:invoicing_dashboard/models/drawer_item_model.dart';

import 'core/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: isActive? const BoxDecoration(
        border: Border(right: BorderSide(color: Color(0xff4EB7F2),width: 2,style: BorderStyle.solid))
      ):null,
      child: Row(
        children: [
          SvgPicture.asset(drawerItemModel.pathName),
          const SizedBox(width: 5),
          Text(drawerItemModel.name,style: AppStyles.styleMedium16(context).copyWith(color: Color(isActive?0xff4EB7F2:0xFF064061)))
        ],
      ),
    );
  }
}
