import 'package:flutter/material.dart';
import 'package:trogon_task/core/theme/app_palatte.dart';

import '../widgets/course_screen_tab_bar.dart';
import '../widgets/course_tile.dart';
import '../widgets/update_widget.dart';
import '../widgets/whatsapp_widget.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white,),),
        backgroundColor: AppPalette.gradient1,
        title: const Text('Course Name', style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Colors.white
        ),),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            TabBarItems(),
            UpdateWidget(),
            WhatsappWidget(),
            CourseTile(),
            CourseTile(),
          ],
        ),
      ),
    );

  }
}
