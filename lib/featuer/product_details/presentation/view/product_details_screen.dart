
import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/core/widget/custom_driver.dart';
import 'package:flower_app/featuer/product_details/presentation/view/widget/appbar_product_widget.dart';
import 'package:flower_app/featuer/product_details/presentation/view/widget/plus_and_minus_count_widget.dart';
import 'package:flower_app/featuer/product_details/presentation/view/widget/product_body_widget.dart';
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
            child: ProductBodyWidget(index: index,),
          )
        ],
      ),
    );
  }
}
