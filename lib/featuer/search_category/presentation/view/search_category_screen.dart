import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/core/widget/custom_appbar.dart';
import 'package:flower_app/featuer/search_category/presentation/view/widget/search_category_body.dart';
import 'package:flutter/material.dart';

class SearchCategoryScreen extends StatelessWidget {
  const SearchCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        flexibleSpace: CustomAppbar(
          onPressed: (){
            Navigator.pop(context);
          },
          title: AppTexts.milkshake,
        ),
      ),
      body: SearchCategoryBody()
    );
  }
}
