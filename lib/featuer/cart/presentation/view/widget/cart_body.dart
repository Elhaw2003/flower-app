import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/core/widget/custom_button.dart';
import 'package:flower_app/core/widget/custom_driver.dart';
import 'package:flower_app/featuer/cart/presentation/view/widget/cart_item.dart';
import 'package:flower_app/featuer/cart/presentation/view/widget/view_select_item_in_cart_screen.dart';
import 'package:flower_app/featuer/end/presentation/view/end_screen.dart';
import 'package:flutter/material.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 25,),
        CustomDriver(),
        SizedBox(height: 24,),
        CartItem(),
        SizedBox(height: 60,),
        ViewSelectItemInCartScreen(),
        SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23),
          child: CustomButton(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (c){
                  return EndScreen();
                }));
              },
              title: AppTexts.confirm,
          ),
        ),
        SizedBox(height: 140,)
      ],
    );
  }
}
