import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import '../../models/income_model.dart';
import '../../utils/app_colors.dart';
import 'income_list_view.dart';

class IncomeBody extends StatefulWidget {
  const IncomeBody({super.key});

  @override
  State<IncomeBody> createState() => _IncomeBodyState();
}

class _IncomeBodyState extends State<IncomeBody> {
  int currentIndex = -1;
  List<IncomeModel> charts = [
    IncomeModel(value: 40, color: AppColors.chartBlue, title: 'Design service'),
    IncomeModel(value: 25, color: AppColors.blueColor, title: 'Design product'),
    IncomeModel(
        value: 22, color: AppColors.darkBlueColor, title: 'Product royalti'),
    IncomeModel(value: 20, color: AppColors.chartgrey, title: 'Other'),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > 1200 && width < 1750
        ? AspectRatio(aspectRatio: 1, child: getDetailedChartsData())
        : Row(
            children: [
              Expanded(
                  child: AspectRatio(aspectRatio: 1, child: getChartsData())),
              Expanded(
                flex: 2,
                child: IncomeListView(
                  incomes: charts,
                ),
              )
            ],
          );
  }

  PieChart getChartsData() {
    return PieChart(PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          currentIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: List<PieChartSectionData>.generate(
        4,
        (index) => PieChartSectionData(
          showTitle: false,
          value: charts[index].value,
          radius: currentIndex == index ? 60 : 50,
          color: charts[index].color,
        ),
      ),
    ));
  }

  PieChart getDetailedChartsData() {
    return PieChart(PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          currentIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: List<PieChartSectionData>.generate(
        4,
        (index) => PieChartSectionData(
          showTitle: true,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: currentIndex == index ? null : Colors.white),
          titlePositionPercentageOffset: currentIndex == index ? 1.5 : null,
          title: currentIndex == index
              ? charts[index].title
              : '${charts[index].value}%',
          value: charts[index].value,
          radius: currentIndex == index ? 60 : 50,
          color: charts[index].color,
        ),
      ),
    ));
  }
}
