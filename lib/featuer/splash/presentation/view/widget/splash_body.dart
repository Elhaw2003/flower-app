import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_images.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset(AppImages.splashBody),
        Center(
            child:
            BounceInLeft(
                duration: Duration(
                  seconds: 3
                ),
                child: Image.asset(
                  AppImages.splashLogo,
                  width: 167,height: 124,
                )
            )
        ),
      ],
    );
  }
}
