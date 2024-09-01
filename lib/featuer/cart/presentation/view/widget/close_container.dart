import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../search_category/presentation/controller/item_search_provider.dart';

class CloseContainer extends StatelessWidget {
  const CloseContainer({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 29,
      decoration: BoxDecoration(
          color: AppColors.pinck,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80),
            topRight: Radius.circular(20),
          )
      ),
      child: IconButton(
        onPressed: (){
          Provider.of<ItemSearchProvider>(context,listen: false).removeItemInCartList(index);
        },
        icon: Icon(Icons.close,color: AppColors.brown,size: 16,),
      ),
    );
  }
}
