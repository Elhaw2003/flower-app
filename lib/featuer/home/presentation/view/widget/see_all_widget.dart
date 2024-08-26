import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flutter/material.dart';

class SeeAllWidget extends StatelessWidget {
  const SeeAllWidget({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
              text,
            style: TextStyle(
              color: AppColors.brown,
              fontWeight: FontWeight.w400,
              fontSize: 16
            ),
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Text(
                  AppTexts.seeAll,
                style: TextStyle(
                    color: AppColors.pinck,
                    fontWeight: FontWeight.w400,
                    fontSize: 13
                ),
              ),
              SizedBox(width: 8,),
              Image.asset(
                  AppImages.arrowRight,
                width: 12,
                height: 21.77,
              )
            ],
          ),
        )
      ],
    );
  }
}
