import 'package:flower_app/featuer/home/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_images.dart';
import '../../../../../core/utilies/app_texts.dart';
import '../../../../../core/widget/custom_button.dart';

class EndBody extends StatelessWidget {
  const EndBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100,),
        Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(160),
                    topLeft: Radius.circular(80),
                  )
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.confirmSuccessfully,width: 200,height: 200,),
                    const SizedBox(height: 12,),
                    Text(
                      AppTexts.orderConfirmedSuccessfully,
                      style: TextStyle(
                          color: AppColors.brown.withOpacity(0.9),
                          fontSize: 17
                      ),
                    ),
                    const SizedBox(height: 116,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: CustomButton(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (c){
                            return HomeScreen();
                          }));
                        },
                          title: AppTexts.backToHome
                      ),
                    )
                  ],
                ),
              ),
            )
        )
      ],
    );
  }
}
class Ff extends StatelessWidget {
  const Ff({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
