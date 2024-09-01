import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/core/widget/custom_appbar.dart';
import 'package:flower_app/featuer/cart/presentation/view/widget/cart_body.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        flexibleSpace: CustomAppbar(
          onPressed: (){
            Navigator.pop(context);
          },
          title: AppTexts.cart
        ),
      ),
      body: CartBody(),
    );
  }
}
