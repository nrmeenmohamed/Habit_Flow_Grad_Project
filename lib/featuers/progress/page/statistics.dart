import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/widgets/custom_bottom_nav_bar.dart';
import '../components/habit_chart_componenet.dart';
import '../components/progress_top_3_habits.dart';
import '../components/time_periodic_selector.dart';

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
      bottomNavigationBar:  BottomNavigation(),
    );
  }
}
