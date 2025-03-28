import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/active_all_expenses_item.dart';
import 'package:invoicing_dashboard/in_active_all_expenses_item.dart';
import 'models/all_expenses_item_model.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key,
      required this.allExpensesItemModel,
      required this.isActive, this.padding});

  final AllExpensesItemModel allExpensesItemModel;
  final double? padding;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive?ActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel,margin: 10,):InActiveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
