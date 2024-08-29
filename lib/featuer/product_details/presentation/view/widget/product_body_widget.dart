import 'package:flower_app/core/widget/custom_button.dart';
import 'package:flower_app/featuer/product_details/presentation/view/widget/plus_and_minus_count_widget.dart';
import 'package:flower_app/featuer/product_details/presentation/view/widget/view_select_item_and_total.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_fonts.dart';
import '../../../../../core/utilies/app_texts.dart';
import '../../../../../core/widget/custom_driver.dart';
import '../../../../search_category/presentation/controller/item_search_provider.dart';

class ProductBodyWidget extends StatelessWidget {
  const ProductBodyWidget({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            topLeft: Radius.circular(35),
          )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23,vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  Provider.of<ItemSearchProvider>(context).catigories[index].title,
                  style: TextStyle(
                      fontFamily: AppFonts.pangolin,
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                      color: AppColors.brown
                  ),
                )),
                Text(
                  "${Provider.of<ItemSearchProvider>(context).catigories[index].price}. LE",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: AppColors.brown
                  ),
                ),
              ],
            ),
            SizedBox(height: 11,),
            Text(
              Provider.of<ItemSearchProvider>(context).catigories[index].bigDesc,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.brown.withOpacity(0.65)
              ),
            ),
            SizedBox(height: 7,),
            CustomDriver(),
            SizedBox(height: 24.5,),
            PlusAndMinusCountWidget(index: index,),
            SizedBox(height: 77,),
            ViewSelectItemAndTotal(index: index,),
            SizedBox(height: 16,),
            CustomButton(title: AppTexts.addToCart)
          ],
        ),
      ),
    );
  }
}
