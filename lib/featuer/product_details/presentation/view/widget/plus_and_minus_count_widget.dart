import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flutter/material.dart';

class PlusAndMinusCountWidget extends StatelessWidget {
  const PlusAndMinusCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: LinearGradient(
            colors: [
              AppColors.pinck.withOpacity(0.4),
              AppColors.pinck.withOpacity(0.1),
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            stops: [0.60,40]
          )
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.brown,
              child: IconButton(
                onPressed: (){
      
                },
                icon: Icon(Icons.remove,color: AppColors.white,),
              ),
            ),
            SizedBox(width: 30,),
            Text(
                "data"
            ),
            SizedBox(width: 30,),
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.brown,
              child: IconButton(
                onPressed: (){
      
                },
                icon: Icon(Icons.add,color: AppColors.white,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
