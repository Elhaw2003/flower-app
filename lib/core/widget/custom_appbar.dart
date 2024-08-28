import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.onPressed, required this.title});
  final void Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: onPressed,
        icon: Icon(Icons.arrow_back_ios_new_outlined,color: AppColors.brown),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w500,
          color: AppColors.brown
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(AppImages.smallFlower,width: 24,height: 24,),
        )
      ],
    );
  }
}
