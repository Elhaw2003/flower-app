import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../search_category/presentation/controller/item_search_provider.dart';

class PlusAndMinusCountInCartScreen extends StatelessWidget {
  const PlusAndMinusCountInCartScreen({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            radius: 15,
            backgroundColor: AppColors.brown,
            child: IconButton(
              onPressed: (){
                Provider.of<ItemSearchProvider>(context,listen: false).minusCountItemInCartList(index);
              },
              icon: Icon(Icons.remove,color: AppColors.white,size: 15,),
            ),
          ),
          SizedBox(width: 30,),
          Text(
            "${Provider.of<ItemSearchProvider>(context).cartList[index].count}",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: AppColors.brown
            ),
          ),
          SizedBox(width: 25,),
          CircleAvatar(
            radius: 15,
            backgroundColor: AppColors.brown,
            child: IconButton(
              onPressed: (){
                Provider.of<ItemSearchProvider>(context,listen: false).plusCountItemInCartList(index);
              },
              icon: Icon(Icons.add,color: AppColors.white,size: 15,),
            ),
          )
        ],
      ),
    );
  }
}
