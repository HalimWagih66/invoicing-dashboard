import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/custom_drawer.dart';

import 'AllExpensesAndQuickInvoiceSection.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: SingleChildScrollView(
          child: AllExpensesAndQuickInvoiceSection(),),),
      ],
    );
  }
}
