import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_widget.dart';
import 'package:responsive_dashboard/views/widgets/income_body.dart';
import 'package:responsive_dashboard/views/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundWidget(
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [CustomIncomeHeader(), Gap(16), IncomeBody()],
      ),
    );
  }
}
