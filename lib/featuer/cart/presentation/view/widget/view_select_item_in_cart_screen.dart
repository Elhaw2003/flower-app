import 'package:flower_app/featuer/search_category/presentation/controller/item_search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_texts.dart';
import '../../../../search_category/data/model/item_category_model.dart';

class ViewSelectItemInCartScreen extends StatelessWidget {
  const ViewSelectItemInCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double getTotalPriceInCart() {
      double totalPrice = 0;
      for (ItemCategoryModel item in Provider.of<ItemSearchProvider>(context).cartList) {
        totalPrice += item.price * item.count;
      }
      return totalPrice;
    }
    int getTotalSelectedItemsCountInCart(){
      int count=0;
      for (ItemCategoryModel item in Provider.of<ItemSearchProvider>(context).cartList) {
        count+=item.count;
      }
      return count;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightPink,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14,vertical: 15),
          child: Row(
            children: [
              Expanded(child: Text(
                "${AppTexts.selectedItems}  (${getTotalSelectedItemsCountInCart()})",
                style: TextStyle(
                    color: AppColors.brown,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                ),
              )),
              Expanded(
                  child: Text(
                    textAlign: TextAlign.end,
                    "${AppTexts.total} : "
                        "${getTotalPriceInCart()}. LE",
                    style: TextStyle(
                        color: AppColors.brown,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
