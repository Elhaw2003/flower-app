import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flower_app/featuer/product_details/presentation/view/product_details_screen.dart';
import 'package:flower_app/featuer/search_category/presentation/controller/item_search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 20),
      separatorBuilder: (context, index) {
        return SizedBox(height: 28,);
      },
         itemCount: context.watch<ItemSearchProvider>().searchItemList.isEmpty ?
         context.watch<ItemSearchProvider>().catigories.length: context.watch<ItemSearchProvider>().searchItemList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (c){

                return ProductDetailsScreen(index: index);

              }));
            },
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.pinck,width: 0.6),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.pinck.withOpacity(0.3),
                        AppColors.pinck.withOpacity(0),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.60,40]
                    )
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Text(
                                context.watch<ItemSearchProvider>().searchItemList.isEmpty?
                                context.watch<ItemSearchProvider>().catigories[index].title:
                                context.watch<ItemSearchProvider>().searchItemList[index].title,
                                style: const TextStyle(
                                  color: AppColors.brown,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: AppFonts.pangolin
                                ),
                              ),
                              const SizedBox(height: 4,),
                              Text(
                                context.watch<ItemSearchProvider>().searchItemList.isEmpty?
                                context.watch<ItemSearchProvider>().catigories[index].smallDesc:
                                context.watch<ItemSearchProvider>().searchItemList[index].smallDesc,
                                style: TextStyle(
                                    color: AppColors.brown.withOpacity(0.65),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 9,),
                              Text(
                                "${
                                context.watch<ItemSearchProvider>().searchItemList.isEmpty?
                               context.watch<ItemSearchProvider>().catigories[index].price:
                               context.watch<ItemSearchProvider>().searchItemList[index].price
                                }. LE",
                                style: const TextStyle(
                                    color: AppColors.brown,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        child: Image.asset(
                     context.watch<ItemSearchProvider>().searchItemList.isEmpty?
                    context.watch<ItemSearchProvider>().catigories[index].image:
                     context.watch<ItemSearchProvider>().searchItemList[index].image,
                          width: 105,
                          height: 140,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.brown,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        topLeft: Radius.circular(3),
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.1),
                    child: Icon(
                      Icons.add,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
    );
  }
}
