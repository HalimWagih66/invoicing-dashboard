import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/latest_transaction_item.dart';

import 'models/user_info_model.dart';

class DisplayLatestTransactionItems extends StatelessWidget {
  const DisplayLatestTransactionItems({super.key});
  static List<UserInfoModel> items = [
    UserInfoModel(pathImage: "assets/images/avatar_1.svg",name: "Madrani Andi",email: "Madraniadi20@gmail"),
    UserInfoModel(pathImage: "assets/images/avatar_2.svg",name: "Josua Nunito",email: "Nunito@gmail.com"),
    UserInfoModel(pathImage: "assets/images/avatar_3.svg",name: "Madrani Andi",email: "Madraniadi20@gmail"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items.map((e) => IntrinsicWidth(child: LatestTransactionItem(userInfoModel: e))).toList(),
      ),
    );
  }
}
