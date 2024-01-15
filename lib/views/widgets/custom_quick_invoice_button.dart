import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class CustomQuickInvoiceButton extends StatelessWidget {
  const CustomQuickInvoiceButton({
    super.key,
    required this.text,
    this.textColor,
    this.buttonColor,
  });
  final String text;
  final Color? textColor;
  final Color? buttonColor;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: buttonColor ?? AppColors.blueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        height: 62,
        padding: const EdgeInsets.all(20),
        child: Text(
          text,
          style: AppStyles.styleSemiBold16
              .copyWith(color: textColor ?? AppColors.whiteColor),
        ),
        onPressed: () {});
  }
}
