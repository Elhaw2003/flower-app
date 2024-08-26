import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flower_app/featuer/home/data/item1_list.dart';
import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(width: 24,);
        },
        itemCount: item1List.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.75,0.25],
                    colors: [
                      AppColors.lightPink.withOpacity(0.3),
                      AppColors.lightPink.withOpacity(0)
                    ]
                  )
                ),
                child: Image.asset(
                    item1List[index].image,
                ),
              ),
              Text(
                item1List[index].text,
                style: TextStyle(
                  color: AppColors.brown,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  fontFamily: AppFonts.syne
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
