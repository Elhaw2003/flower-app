
import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/core/widget/custom_driver.dart';
import 'package:flower_app/featuer/product_details/presentation/view/widget/appbar_product_widget.dart';
import 'package:flower_app/featuer/product_details/presentation/view/widget/plus_and_minus_count_widget.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinck,
      body: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: const SizedBox(),
            toolbarHeight: MediaQuery.of(context).size.height*0.35,
            backgroundColor: AppColors.pinck,
            flexibleSpace:  AppbarProductWidget(),
          ),
          SliverFillRemaining(
            child: Container(
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
                            AppTexts.oreoMilkshake,
                          style: TextStyle(
                            fontFamily: AppFonts.pangolin,
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: AppColors.brown
                          ),
                        )),
                        Text(
                            "45. LE",
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
                        AppTexts.bigDescSearchCategory,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: AppColors.brown.withOpacity(0.65)
                      ),
                    ),
                    SizedBox(height: 7,),
                    CustomDriver(),
                    SizedBox(height: 24.5,),
                    PlusAndMinusCountWidget(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
