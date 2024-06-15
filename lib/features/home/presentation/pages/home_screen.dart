import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trogon_task/core/theme/app_palatte.dart';
import 'package:trogon_task/features/home/presentation/widgets/home_screen_categories_widget.dart';
import 'package:trogon_task/features/home/presentation/widgets/home_screen_courses_widget.dart';

import '../../../course/presentation/pages/course_screen.dart';
import '../../data/repository/repository.dart';
import '../controller/home_screen_controller.dart';
import '../widgets/home_screen_navbar_items.dart';
import '../widgets/home_screen_practice_widget.dart';
import '../widgets/home_screen_test_series_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  var _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    final HomeScreenController controller = Get.put(
      HomeScreenController(repository: Repository()),
    );
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppPalette.gradient1,
        shape: const CircleBorder(),
        child: Image.asset('assets/images/cup.png'),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const CourseScreen()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        shadow: const BoxShadow(
          offset:  Offset(0, 1),
          blurRadius: 12,
          spreadRadius: 0.5,
          color: AppPalette.textGreyColor,
        ),
        elevation: 10,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge ,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
        itemCount: navBarItems.length,
          tabBuilder: (int index, bool isActive){
        final color = isActive ? AppPalette.gradient1 : AppPalette.textGreyColor;
        return Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              navBarItems[index].icon,
              size: 24,
              color: color,
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                navBarItems[index].name,
                maxLines: 1,
                style: TextStyle(color: color),
              ),
            )
          ],
        );
          },
          activeIndex: _bottomNavIndex,
          onTap: (index) => setState(() => _bottomNavIndex = index)),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppPalette.gradient1, AppPalette.gradient2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Hi Good Morning \n',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: 'John',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Chip(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.zero,
                              labelPadding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              label: Row(
                                children: [
                                  const Text(
                                    '10',
                                    style: TextStyle(
                                      color: AppPalette.yellowColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset('assets/images/coin.png'),
                                ],
                              )),
                        ),
                        CircleAvatar(
                          radius: 20,
                          child: Image.asset('assets/images/place_holder.png'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppPalette.containerBgColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Selected Course \n',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: AppPalette.textGreyColor,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Montessori',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: AppPalette.gradient1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text('Change',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14)),
                                  // Ensure the text color is visible on the background
                                  const SizedBox(width: 8),
                                  // Adjust the spacing between the text and the icon
                                  Image.asset('assets/images/arrow.png'),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeScreenCategoriesWidget(
                            gradient1: AppPalette.redColorGradient1,
                            gradient2: AppPalette.redColorGradient2,
                            image: 'assets/images/exam.png',
                            text: 'Exam'),
                        HomeScreenCategoriesWidget(
                            gradient1: AppPalette.yellowColorGradient1,
                            gradient2: AppPalette.yellowColorGradient2,
                            image: 'assets/images/practice.png',
                            text: 'Practice'),
                        HomeScreenCategoriesWidget(
                            gradient1: AppPalette.blueColorGradient1,
                            gradient2: AppPalette.blueColorGradient2,
                            image: 'assets/images/materials.png',
                            text: 'Materials'),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Courses',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: AppPalette.gradient1),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeScreenCoursesWidget(
                          gradient1: AppPalette.blueColorGradient1,
                          gradient2: AppPalette.blueColorGradient2,
                          text: 'KTET',
                          image: 'assets/images/KTET.png',
                        ),
                        HomeScreenCoursesWidget(
                          gradient1: AppPalette.yellowColorGradient1,
                          gradient2: AppPalette.yellowColorGradient2,
                          text: 'LP/UP/HST',
                          image: 'assets/images/LP.png',
                        ),
                        HomeScreenCoursesWidget(
                          gradient1: AppPalette.redColorGradient1,
                          gradient2: AppPalette.redColorGradient1,
                          text: 'SET',
                          image: 'assets/images/SET.png',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeScreenCoursesWidget(
                          gradient1: AppPalette.blueColorGradient1,
                          gradient2: AppPalette.blueColorGradient2,
                          text: 'NET',
                          image: 'assets/images/NET.png',
                        ),
                        HomeScreenCoursesWidget(
                          gradient1: AppPalette.gradient1,
                          gradient2: AppPalette.gradient2,
                          text: 'Montessori',
                          image: 'assets/images/montessori.png',
                        ),
                        HomeScreenCoursesWidget(
                          gradient1: AppPalette.orangeGradient1,
                          gradient2: AppPalette.orangeGradient2,
                          text: 'Crash Course',
                          image: 'assets/images/crash_course.png',
                        )
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    HomeScreenPracticeWidget(),
                    SizedBox(
                      height: 30,
                    ),
                    Text('Latest Test Series', style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          HomeScreenTestSeriesWidget(
                            gradient1: AppPalette.gradient1,
                            gradient2: AppPalette.gradient2,
                          ),
                          HomeScreenTestSeriesWidget(
                            gradient1: AppPalette.orangeGradient1,
                            gradient2: AppPalette.orangeGradient2,
                          ),
                          HomeScreenTestSeriesWidget(
                            gradient1: AppPalette.gradient1,
                            gradient2: AppPalette.gradient2,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
