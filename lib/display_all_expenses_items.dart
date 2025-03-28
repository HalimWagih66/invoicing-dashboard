import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/all_expenses_item.dart';

import 'models/all_expenses_item_model.dart';

class DisplayAllExpensesItems extends StatefulWidget {
  const DisplayAllExpensesItems({super.key});

  @override
  State<DisplayAllExpensesItems> createState() => _DisplayAllExpensesItemsState();
}

class _DisplayAllExpensesItemsState extends State<DisplayAllExpensesItems> {
  List<AllExpensesItemModel> items = [
    AllExpensesItemModel(title: 'Balance',
        date: "April 2022",
        money: "\$20,129",
        pathImage: "assets/images/balance.svg"),
    AllExpensesItemModel(title: 'Balance',
        date: "April 2022",
        money: "\$20,129",
        pathImage: "assets/images/balance.svg"),
    AllExpensesItemModel(title: 'Balance',
        date: "April 2022",
        money: "\$20,129",
        pathImage: "assets/images/balance.svg"),
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {

        if(e.key == 1){
          return Expanded(
            child: InkWell(onTap: () {
              setState(() {
                selectedItem = e.key;
              });
            },child: AllExpensesItem(allExpensesItemModel: e.value, isActive: selectedItem == e.key, padding: 10,)),
          );
        }else{
          return Expanded(
            child: InkWell(onTap: () {
              setState(() {
                selectedItem = e.key;
              });
            },child: AllExpensesItem(allExpensesItemModel: e.value, isActive: selectedItem == e.key)),
          );
        }
      }).toList(),
    );
  }
}
