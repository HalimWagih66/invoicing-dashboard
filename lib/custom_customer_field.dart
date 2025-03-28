import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/custom_text_field.dart';

class CustomCustomerForm extends StatelessWidget {
  const CustomCustomerForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTextField(title: "Customer name", contentField: "Type customer name")),
            SizedBox(width: 16),
            Expanded(child: CustomTextField(title: "Customer Email", contentField: "Type customer email")),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: CustomTextField(title: "Item name", contentField: "Type customer name")),
            SizedBox(width: 16),
            Expanded(child: CustomTextField(title: "Item mount", contentField: "USD")),
          ],
        ),
      ],
    );
  }
}
