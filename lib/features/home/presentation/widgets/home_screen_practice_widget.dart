import 'package:flutter/material.dart';
import 'package:trogon_task/core/theme/app_palatte.dart';

class HomeScreenPracticeWidget extends StatelessWidget {
  const HomeScreenPracticeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 144,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: AppPalette.practiceCardColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Practice With Previous Year \nQuestion Papers',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10),
            ],
          ),
        ),
        Positioned(
            bottom: 40,
            right: 20,
            child: Image.asset('assets/images/practice_card.png')),
        Positioned(
            right: 0,
            left: 0,
            bottom: -25,
            child: Container(
              decoration:  BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 7
                ),
                color: AppPalette.gradient1,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
            )),
      ],
    );
  }
}
