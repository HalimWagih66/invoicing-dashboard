import 'package:flutter/material.dart';
import 'core/utils/app_styles.dart';


class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("All Expenses",style: AppStyles.styleSemiBold20(context),),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xffF1F1F1),style: BorderStyle.solid,width: 1),
              ),
              child: Text("Monthly",style: AppStyles.styleMedium16(context),),
            )
          ],
        ),
      ],
    );
  }
}
