import 'package:flutter/material.dart';

import 'core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.background, this.textColor, required this.text});
  final Color background;
  final Color? textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
          elevation: 0,backgroundColor: background,padding: const EdgeInsets.symmetric(vertical: 20)),
        onPressed: () {

    }, child: Text(text,style: AppStyles.styleSemiBold18(context).copyWith(color: textColor??const Color(0xff4EB7F2))));
  }
}
