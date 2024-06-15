import 'package:flutter/material.dart';
import 'package:trogon_task/core/theme/app_palatte.dart';

class UpdateWidget extends StatelessWidget {
  const UpdateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80, bottom: 20, left: 10, right: 10),
      decoration: BoxDecoration(
        image: const  DecorationImage(
          image: AssetImage('assets/images/lock.png')
        ),
        color: AppPalette.practiceCardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 30, bottom: 30),
        child: Row(
          children: [
            const Text(
              'Upgrade and unlock the \nfull course',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.redAccent),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(5.0), // Adjust the radius as needed
                  ),
                ),
              ),
              child: const Text(
                'Upgrade',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
