import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/cutomer_text_card_model.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomerTextField extends StatelessWidget {
  const CustomerTextField({super.key, required this.item});
  final CustomerTextCardModel item;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppStyles.styleRegular16,
      cursorColor: AppColors.darkBlueColor,
      decoration: InputDecoration(
          hintText: item.label,
          hintStyle:
              AppStyles.styleRegular16.copyWith(color: AppColors.greyColor),
          contentPadding: const EdgeInsets.all(20),
          filled: true,
          fillColor: AppColors.mediumGreyColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none)),
    );
  }
}
