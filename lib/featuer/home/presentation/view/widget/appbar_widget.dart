import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_images.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        AppImages.flower,
        width: 80,
        height: 43,
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Icon(
            Icons.shopping_cart,
            color: AppColors.brown,
            size: 24,
          ),
        ),
      ],
    );
  }
}
