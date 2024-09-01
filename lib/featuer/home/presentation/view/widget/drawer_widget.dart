import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/featuer/cart/presentation/view/cart_screen.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 260,
      child: Column(
        children: [
          Image.asset(AppImages.myPrfile,fit: BoxFit.contain,),
          const SizedBox(height: 40,),
          Card(
            color: AppColors.grey.withOpacity(0.2),
            child: ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (c){
                  return CartScreen();
                }));
              },
              leading: Icon(Icons.card_travel_outlined,color: AppColors.brown,size: 50,),
              title: Text(
                AppTexts.cart,
                style: TextStyle(
                  color: AppColors.brown,
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
