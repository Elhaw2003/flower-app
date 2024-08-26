import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_images.dart';
import '../../../../../core/utilies/app_texts.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
            AppImages.bannerHomeScreen,
        ),
        Positioned(
            top: 10,
            child: Text(
                AppTexts.bannerDesc,
              style: TextStyle(
                fontFamily: AppFonts.pangolin,
                color: AppColors.brown,
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),
            ))
      ],
    );
  }
}
