import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:trogon_task/core/theme/app_palatte.dart';

class LoadingWidget extends StatelessWidget {
  final RxBool? isLoading;
  final Widget ? child;

   const LoadingWidget({super.key, this.isLoading, this.child});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child!,
        isLoading!.value? Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.black87,
          child:  const Center(
            child: SpinKitDoubleBounce(
              color: AppPalette.gradient1,
            ),
          ),
        ):const SizedBox(),
      ],
    );
  }
}
