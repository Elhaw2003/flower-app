import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flower_app/featuer/home/presentation/controller/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utilies/app_colors.dart';

class ItemGridWidget extends StatelessWidget {
  const ItemGridWidget({super.key, required this.index});
  final int index;
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
                  Provider.of<HomeProvider>(context).items[index].image,
                width: 125,
                height: 85,
              ),
              const SizedBox(height: 14,),
              Text(
                  Provider.of<HomeProvider>(context).items[index].title,
                style: TextStyle(
                  color: AppColors.brown,
                  fontWeight: FontWeight.w400,
                  fontSize: 13
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                Provider.of<HomeProvider>(context).items[index].desc,
                style: TextStyle(
                    color: AppColors.grey,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.futuraBT,
                    fontSize: 10
                ),
              ),
              const SizedBox(height: 10,),
              Text(
                "${Provider.of<HomeProvider>(context).items[index].price}. LE",
                style: TextStyle(
                    color: AppColors.brown,
                    fontWeight: FontWeight.w700,
                    fontSize: 13
                ),
              ),
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
              onPressed: (){
                Provider.of<HomeProvider>(context,listen: false).updatefav(index);
              },
              icon: Provider.of<HomeProvider>(context).items[index].favOrNot == true ?Icon(Icons.favorite)
              :Icon(Icons.favorite_border_outlined),
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
        ),
      ],
    );
  }
}
