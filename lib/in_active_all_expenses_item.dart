import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:invoicing_dashboard/models/all_expenses_item_model.dart';
import 'core/utils/app_styles.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({super.key, required this.allExpensesItemModel, this.margin});
  final AllExpensesItemModel allExpensesItemModel;
  final double? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppStyles.primaryColor,
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
                  child: SvgPicture.asset(allExpensesItemModel.pathImage,color: const Color(0xff4EB7F2))),
              const Spacer(),
              const Icon(Icons.navigate_next,color: Color(0xff4EB7F2))
            ],
          ),
          const SizedBox(height: 34),
          Text(allExpensesItemModel.title,style: AppStyles.styleMedium16(context)),
          const SizedBox(height: 8),
          Text(allExpensesItemModel.date,style: AppStyles.styleRegular14(context)),
          const SizedBox(height: 16),
          Text(allExpensesItemModel.money,style: AppStyles.styleSemiBold20(context)),
        ],
      ),
    );
  }
}
