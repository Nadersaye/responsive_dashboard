import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import '../../utils/app_colors.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.item,
    required this.isSelected,
  });
  final bool isSelected;
  final ExpensesItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: isSelected
                ? AppColors.whiteColor.withOpacity(0.10000000149011612)
                : AppColors.mediumGreyColor,
            child: Center(
              child: SvgPicture.asset(item.image,
                  colorFilter: ColorFilter.mode(
                      isSelected ? AppColors.whiteColor : AppColors.blueColor,
                      BlendMode.srcIn)),
            ),
          ),
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: isSelected ? AppColors.whiteColor : AppColors.blueColor,
        )
      ],
    );
  }
}
