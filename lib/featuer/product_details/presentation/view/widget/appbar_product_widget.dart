import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_images.dart';
import '../../../../search_category/presentation/controller/item_search_provider.dart';

class AppbarProductWidget extends StatelessWidget {
  const AppbarProductWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          SizedBox(
            height:  MediaQuery.of(context).size.height*0.4,
            width: double.infinity,
            child: Image.asset(Provider.of<ItemSearchProvider>(context).catigories[index].image),
          ),
          Positioned(
            top: 50,
            child: IconButton(onPressed: ( ) {
              Navigator.pop(context);
            }
                , icon:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: AppColors.brown,
                  ),
                )),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Image.asset(AppImages.smallFlower,width: 24,height: 24,),
            ),
            right: 0,
            top: 65,
          )
        ],
      ),
    ) ;
  }
}
