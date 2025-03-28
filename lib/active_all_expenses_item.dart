import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invoicing_dashboard/models/all_expenses_item_model.dart';

import 'core/utils/app_styles.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key,required this.allExpensesItemModel, this.margin});
  final AllExpensesItemModel allExpensesItemModel;
  final double? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin??0),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.secondColor,
        border: Border.all(
            color: const Color(0xffF1F1F1),
            width: 1,
            style: BorderStyle.solid),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color(0x1affffff),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      style: BorderStyle.solid,
                      width: 1,
                      color: const Color(0x1affffff),
                    ),
                  ),
                  child: SvgPicture.asset(allExpensesItemModel.pathImage,color: Colors.white)),
              const Spacer(),
              const Icon(Icons.navigate_next,color: Colors.white)
            ],
          ),
          const SizedBox(height: 34),
          Text(allExpensesItemModel.title,style: AppStyles.styleMedium16(context).copyWith(color:  const Color(0xffffffff))),
          const SizedBox(height: 8),
          Text(allExpensesItemModel.date,style: AppStyles.styleRegular14(context).copyWith(color:  const Color(0xffFAFAFA))),
          const SizedBox(height: 16),
          Text(allExpensesItemModel.money,style: AppStyles.styleSemiBold20(context).copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
