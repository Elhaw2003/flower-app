import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../search_category/presentation/controller/item_search_provider.dart';

class PlusAndMinusCountWidget extends StatelessWidget {
  const PlusAndMinusCountWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          gradient: LinearGradient(
            colors: [
              AppColors.pinck.withOpacity(0.3),
              AppColors.pinck.withOpacity(0.1),
            ],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            stops: [0.70,0.30]
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
                  Provider.of<ItemSearchProvider>(context,listen: false).minusCountItem(index);
                },
                icon: Icon(Icons.remove,color: AppColors.white,),
              ),
            ),
            SizedBox(width: 30,),
            Text(
              "${Provider.of<ItemSearchProvider>(context).catigories[index].count}",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: AppColors.brown
              ),
            ),
            SizedBox(width: 30,),
            CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.brown,
              child: IconButton(
                onPressed: (){
                  Provider.of<ItemSearchProvider>(context,listen: false).plusCountItem(index);
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
