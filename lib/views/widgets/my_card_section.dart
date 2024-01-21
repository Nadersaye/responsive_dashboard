import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_card_page_view.dart';
import 'package:responsive_dashboard/views/widgets/dot_indicator_row.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});
  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late int currentIndex;
  late PageController pageController;
  @override
  void initState() {
    currentIndex = 0;
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppStyles.styleSemiBold20(context)),
        const Gap(20),
        CustomCardPageView(
          pageController: pageController,
        ),
        const Gap(20),
        DotIndicatorRow(currentIndex: currentIndex)
      ],
    );
  }
}
