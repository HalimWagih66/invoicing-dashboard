
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/quick_invoice.dart';

import 'all_expensess.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        IntrinsicHeight(child: AllExpenses()),
        SizedBox(height: 26),
        QuickInvoice(),
        SizedBox(height: 32)
      ],
    );
  }
}
