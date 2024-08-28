import 'package:flower_app/core/widget/custom_driver.dart';
import 'package:flower_app/featuer/search_category/presentation/controller/item_search_provider.dart';
import 'package:flower_app/featuer/search_category/presentation/view/widget/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_texts.dart';

class SearchCategoryBody extends StatelessWidget {
  const SearchCategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 34,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  onChanged: (value){
                    Provider.of<ItemSearchProvider>(context,listen: false).searchItemInFormField(value);
                  },
                  style: TextStyle(
                    color: AppColors.brown
                  ),
                  cursorColor: AppColors.brown.withOpacity(0.6),
                  onTapOutside: (o) {
                    FocusManager.instance.primaryFocus!.unfocus();
                  },
                  decoration: InputDecoration(
                      hintText: AppTexts.searchInMilkShake,
                      hintStyle: TextStyle(
                          color: AppColors.brown.withOpacity(0.3),
                          fontWeight: FontWeight.w400,
                          fontSize: 13
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColors.brown,width: 0.5)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: AppColors.brown,width: 0.5)
                      )
                  ),
                ),
              ),
              const SizedBox(width: 12,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: AppColors.pinck
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.search_outlined),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        CustomDriver(),
        const SizedBox(height: 34,),
        Expanded(child: ItemWidget()),
      ],
    );
  }
}
