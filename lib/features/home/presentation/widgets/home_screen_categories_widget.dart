import 'package:flutter/material.dart';

class HomeScreenCategoriesWidget extends StatelessWidget {
  final Color gradient1;
  final Color gradient2;
  final String image;
  final String text;

  const HomeScreenCategoriesWidget({
    super.key,
    required this.gradient1,
    required this.gradient2,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91,
      width: 86,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image)),
        gradient: LinearGradient(
          colors: [gradient1, gradient2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration:  BoxDecoration(
            color: gradient1,
            borderRadius: const BorderRadius.only(bottomRight: Radius.circular(15), bottomLeft:Radius.circular(15))
          ),
          width: double.infinity,
            child: Text(
              textAlign: TextAlign.center,
              text, style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.white
            ),)),
      ),
    );
  }
}