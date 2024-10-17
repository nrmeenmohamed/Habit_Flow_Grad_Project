import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_bottom_nav_bar.dart';
import '../../progress/components/habit_chart_componenet.dart';
import '../../progress/components/progress_top_3_habits.dart';
import 'components/custom_drop_down_menu.dart';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Statistics",
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Column(
          children: [
            const CustomDropdownMenu(),
            SizedBox(height: 20.h),

            const CompletedHabitsChart(),
            SizedBox(height: 20.h),

            const ProgressTop3Habits(),
            SizedBox(height: 20.h),

            const Spacer(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
