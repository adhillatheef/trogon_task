import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:trogon_task/core/theme/app_palatte.dart';

class CourseTile extends StatelessWidget {
  const CourseTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color with opacity
            spreadRadius: 2, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 3), // Offset in X and Y direction
          ),
        ],
      ),
      child: ListTile(
        leading: Image.asset('assets/images/lesson1.png'),
        title: const Text(
          'Day 3 - Lesson 1 ',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppPalette.gradient1,
          ),
        ),
        subtitle: const Text(
          'All About DID',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        trailing: CircularPercentIndicator(
          radius: 25.0,
          lineWidth: 5.0,
          animation: true,
          percent: 0.7,
          center: const Text(
            '10.3',
            style: TextStyle(fontSize: 11.0, color: AppPalette.textGreyColor),
          ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: AppPalette.gradient1,
        ),
      ),
    );
  }
}

class CourseItemModel {
  final String course;
  final String imagePath;
  final String lessonName;
  final String completedPercentage;

  CourseItemModel({
    required this.course,
    required this.imagePath,
    required this.lessonName,
    required this.completedPercentage,
  });
}


