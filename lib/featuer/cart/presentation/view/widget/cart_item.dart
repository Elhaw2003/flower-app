import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/featuer/cart/presentation/view/widget/close_container.dart';
import 'package:flower_app/featuer/cart/presentation/view/widget/plus_and_minus_count_in_cart_screen.dart';
import 'package:flower_app/featuer/search_category/presentation/controller/item_search_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Provider.of<ItemSearchProvider>(context).cartList.isEmpty?
        Center(
          child: Text(
            AppTexts.noItemsAddedInCart,
            style: TextStyle(
                color: AppColors.brown,
                fontWeight: FontWeight.w900,
                fontSize: 20
            ),
          ),
        )
            :ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 28,
            );
          },
          itemCount: Provider.of<ItemSearchProvider>(context).cartList.length,
          itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.pinck,width: 0.5),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.darkPink.withOpacity(0.1),
                      AppColors.darkPink.withOpacity(0)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.90,0.10]
                  )
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              Provider.of<ItemSearchProvider>(context).cartList[index].title,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: AppFonts.pangolin,
                              color: AppColors.brown
                            ),
                          ),
                          const SizedBox(height: 8,),
                          Text(
                            Provider.of<ItemSearchProvider>(context).cartList[index].smallDesc,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.brown.withOpacity(0.65)
                            ),
                          ),
                          const SizedBox(height: 25,),
                          Text(
                            "${AppTexts.price}  :  ${Provider.of<ItemSearchProvider>(context).cartList[index].price}. LE",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.red
                            ),
                          ),
                          const SizedBox(height: 12,),
                          RichText(
                              text: TextSpan(
                                 text: "${AppTexts.total}  :",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.red
                                ),
                                children: [TextSpan(
                                  text:"  ${Provider.of<ItemSearchProvider>(context).cartList[index].price *
                                      Provider.of<ItemSearchProvider>(context).cartList[index].count}. LE",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.brown
                                  )
                                )
                                ]
                              ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset(
                          Provider.of<ItemSearchProvider>(context).cartList[index].image,
                          width: 80,
                          height: 100,),
                        const SizedBox(height: 8,),
                        PlusAndMinusCountInCartScreen(index: index),
                      ],
                    )
                  ],
                ),
              ),
              CloseContainer(index: index),
            ],
          );
        },
        ),
      ),
    );
  }
}
