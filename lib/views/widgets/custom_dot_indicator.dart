import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/active_dot_indicator.dart';
import 'package:responsive_dashboard/views/widgets/in_active_dot_indicator.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      child:
          isActive ? const ActiveDotIndicator() : const InActiveDotIndicator(),
    );
  }
}
