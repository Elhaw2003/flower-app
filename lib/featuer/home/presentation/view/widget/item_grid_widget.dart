import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_images.dart';

class ItemGridWidget extends StatelessWidget {
  const ItemGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: AppColors.pinck),
              gradient: LinearGradient(
                  colors: [
                    AppColors.pinck.withOpacity(0.25),
                    AppColors.white
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.50,0.50]
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                  AppImages.singleDonuts,
                width: 125,
                height: 85,
              ),
              const SizedBox(height: 14,),
              Text("Donuts"),
              const SizedBox(height: 5,),
              Text("Flawor : Creamy"),
              const SizedBox(height: 10,),
              Text("45. LE"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 20,
            backgroundColor: AppColors.white.withOpacity(0.7),
            foregroundColor: AppColors.brown,
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.brown,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                topLeft: Radius.circular(3),
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Icon(
                  Icons.add,
                color: AppColors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
