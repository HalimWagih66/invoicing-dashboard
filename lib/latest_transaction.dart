import 'package:flutter/material.dart';

import 'core/utils/app_styles.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Latest Transaction",style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 24),
        
      ],
    );
  }
}
