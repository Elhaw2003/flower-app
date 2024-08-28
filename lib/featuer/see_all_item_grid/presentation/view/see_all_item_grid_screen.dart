import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/core/widget/custom_appbar.dart';
import 'package:flower_app/featuer/see_all_item_grid/presentation/view/widget/see_all_item_grid_body.dart';
import 'package:flutter/material.dart';

class SeeAllItemGridScreen extends StatelessWidget {
  const SeeAllItemGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        flexibleSpace: CustomAppbar(
          onPressed: (){
            Navigator.pop(context);
          },
          title: AppTexts.bestSelling,
        ),
      ),
      body: SeeAllItemGridBody(),
    );
  }
}
