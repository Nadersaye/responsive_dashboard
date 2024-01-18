import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_dot_indicator.dart';

class DotIndicatorRow extends StatelessWidget {
  const DotIndicatorRow({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: CustomDotIndicator(isActive: index == currentIndex),
              )),
    );
  }
}
