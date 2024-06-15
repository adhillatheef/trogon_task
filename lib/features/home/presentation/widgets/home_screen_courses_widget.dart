import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenCoursesWidget extends StatelessWidget {
  final Color gradient1;
  final Color gradient2;
  final String text;
  final String image;

  const HomeScreenCoursesWidget({
    super.key,
    required this.gradient1,
    required this.gradient2,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DottedBorder(
          strokeCap: StrokeCap.round,
          strokeWidth: 3,
          radius: const Radius.circular(10),
          dashPattern: const [20, 15],
          color: gradient2,
          borderType: BorderType.Circle,
          child: Container(
            margin: const EdgeInsets.all(5),
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(image)),
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [gradient1, gradient2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(text,style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),),
      ],
    );
  }
}
