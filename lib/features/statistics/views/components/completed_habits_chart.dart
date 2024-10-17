import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/managers/color_manager.dart';

class CompletedHabitsChart extends StatelessWidget {
  const CompletedHabitsChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: const EdgeInsets.all(16), // أضفنا بعض الـ padding حول الرسم البياني
      decoration: BoxDecoration(
        color: ColorManager.secondaryColor, // خلفية الحاوية
        borderRadius: BorderRadius.circular(16), // حواف دائرية
        border: Border.all( // إضافة حدود بلون معين وسُمك
          color: Colors.black,
          width: 2,
        ),
      ),
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 15,
          barGroups: _buildBarGroups(),
          borderData: FlBorderData(show: false),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  const days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      days[value.toInt()],
                      style: const TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  );
                },
              ),
            ),
          ),
          gridData: const FlGridData(show: false),
          backgroundColor: ColorManager.secondaryColor,
        ),
      ),
    );
  }

  List<BarChartGroupData> _buildBarGroups() {
    return List.generate(7, (index) {
      return BarChartGroupData(
        x: index,
        barsSpace: 0,
        barRods: [
          BarChartRodData(
            toY: 6,
            color: ColorManager.primaryColor,
            width: 10,
            borderRadius: BorderRadius.circular(10),
          ),
          BarChartRodData(
            toY: 12,
            color: ColorManager.accentColor,
            width: 10,
            borderRadius: BorderRadius.circular(10),
          ),
        ],
        showingTooltipIndicators: [],
      );
    });
  }
}
