import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../search_category/presentation/controller/item_search_provider.dart';

class ViewSelectItemAndTotal extends StatelessWidget {
  const ViewSelectItemAndTotal({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightPink,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14,vertical: 15),
        child: Row(
          children: [
            Expanded(child: Text(
                "Selected items  (${Provider.of<ItemSearchProvider>(context).catigories[index].count})",
              style: TextStyle(
                color: AppColors.brown,
                fontSize: 15,
                fontWeight: FontWeight.w500
              ),
            )),
            Expanded(
                child: Text(
                    textAlign: TextAlign.end,
                    "Total : "
                        "${Provider.of<ItemSearchProvider>(context).catigories[index].count *
                        Provider.of<ItemSearchProvider>(context).catigories[index].price}. LE",
                  style: TextStyle(
                      color: AppColors.brown,
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
