import 'package:flutter/material.dart';
import 'core/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleMedium16(context),
        ),
        const Spacer(),
        Container(
            decoration: const ShapeDecoration(
                shape:OvalBorder(),
                color: Color(0xffFAFAFA)
            ),
            padding: const EdgeInsets.all(10),
            height: 48, width: 48,
            child: const Icon(Icons.add, color: Color(0xff4EB7F2)))
      ],
    );
  }
}
