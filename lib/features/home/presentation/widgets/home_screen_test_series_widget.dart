import 'package:flutter/material.dart';

class HomeScreenTestSeriesWidget extends StatelessWidget {
  final Color gradient1;
  final Color gradient2;

  const HomeScreenTestSeriesWidget({
    super.key,
    required this.gradient1,
    required this.gradient2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [gradient1, gradient2],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Exam 102 - Biology',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            const Row(
              children: [
                Text(
                  '10 Questions',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Spacer(),
                Text(
                  '120 mins',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5.0), // Adjust the radius as needed
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Attempt Now',
                    style: TextStyle(
                      color: gradient1,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
