import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/custom_background_container.dart';
import 'package:invoicing_dashboard/custom_button.dart';
import 'package:invoicing_dashboard/quick_in_voice_Header.dart';

import 'DisplayLatestTransactionItems.dart';
import 'custom_customer_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        SizedBox(height: 24),
        DisplayLatestTransactionItems(),
        SizedBox(height: 36),
        Divider(
          thickness: 0.3,
        ),
        SizedBox(height: 24),
        CustomCustomerForm(),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: CustomButton(text: "Add more details",background: Color(0xffffffff),textColor: Color(0xff4EB7F2))),
            SizedBox(width: 24),
            Expanded(child: CustomButton(text: "Send Money",background: Color(0xff4EB7F2),textColor: Color(0xffffffff))),
          ],
        )
      ],
    ));
  }
}

