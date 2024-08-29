import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.title});
  final void Function()? onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.brown,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 122,vertical: 16),
          child: Text(
            title,
            style: TextStyle(
              color: AppColors.white,
              fontSize: 17,
              fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }
}
