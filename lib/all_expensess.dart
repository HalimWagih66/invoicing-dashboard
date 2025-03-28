import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'custom_background_container.dart';
import 'display_all_expenses_items.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
           AllExpensesHeader(),
           SizedBox(height: 32),
           DisplayAllExpensesItems()
        ],
      ),
    );
  }
}
