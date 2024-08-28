import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/featuer/home/presentation/view/widget/item_list_widget.dart';
import 'package:flower_app/featuer/home/presentation/view/widget/item_grid_widget.dart';
import 'package:flower_app/featuer/home/presentation/view/widget/search_home_screen.dart';
import 'package:flower_app/featuer/home/presentation/view/widget/see_all_widget.dart';
import 'package:flower_app/featuer/search_category/presentation/view/search_category_screen.dart';
import 'package:flower_app/featuer/see_all_item_grid/presentation/view/see_all_item_grid_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/home_provider.dart';
import 'banner_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: BannerWidget()
          ),
          const SliverToBoxAdapter(
              child: SizedBox(height: 20,),
          ),
          SliverToBoxAdapter(
              child: SearchHomeScreen(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c){
                    return SearchCategoryScreen();
                  }));
                },
              ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 29,),
          ),
          SliverToBoxAdapter(
            child: SeeAllWidget(text: AppTexts.discovByCategory,)
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 23,),
          ),
          SliverToBoxAdapter(
            child: ItemListWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 30,),
          ),
           SliverToBoxAdapter(
            child: SeeAllWidget(
                text: AppTexts.bestSelling,
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (c){
                    return SeeAllItemGridScreen();
                  }));
              },
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 19,),
          ),
          SliverGrid.builder(
            itemCount: 2,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing:MediaQuery.of(context).size.height*0.02,
                crossAxisSpacing: MediaQuery.of(context).size.height*0.02,
                mainAxisExtent: 200,
            ),
            itemBuilder: (context, index) {
              return ItemGridWidget(
                index: index,
              );
            },
          )
        ],
      ),
    );
  }
}
