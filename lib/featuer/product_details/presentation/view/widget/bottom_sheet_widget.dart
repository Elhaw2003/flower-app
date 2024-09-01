import 'package:animate_do/animate_do.dart';
import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_images.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          ZoomIn(
              duration: Duration(seconds: 2),
              child: Image.asset(AppImages.doneImage,height: 390)),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                  AppTexts.done,
                style: TextStyle(
                  color: AppColors.brown,
                  fontWeight: FontWeight.w800,
                  fontSize: 40
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
