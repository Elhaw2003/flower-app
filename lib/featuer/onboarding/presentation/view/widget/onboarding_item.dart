import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/featuer/home/presentation/view/home_screen.dart';
import 'package:flower_app/featuer/onboarding/presentation/view/widget/smooth_controllor.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_fonts.dart';
import '../../../data/onboarding_list.dart';

class OnboardingItem extends StatelessWidget {
   OnboardingItem({super.key, required this.index, required this.pageController});
   int index;
   PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 40,),
        Image.asset(
          onboardingList[index].image,
          width: onboardingList[index].width,
          height: onboardingList[index].height,
        ),
        const SizedBox(height: 10,),
        Text(
          onboardingList[index].title,
          style: TextStyle(
              color: AppColors.brown,
              fontWeight: FontWeight.w400,
              fontSize: 24,
              fontFamily: AppFonts.rockSalt
          ),
        ),
        const SizedBox(height: 25,),
        Text(
          textAlign: TextAlign.center,
          onboardingList[index].description,
          style: TextStyle(
              color: AppColors.brown.withOpacity(0.6),
              fontWeight: FontWeight.w400,
              fontSize: 22,
              fontFamily: AppFonts.majallla
          ),
        ),
        const SizedBox(height: 62,),
        MaterialButton(
          minWidth: 264,
          height: 44,
          color: AppColors.brown,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60),
                topRight: Radius.circular(4),
                bottomLeft: Radius.circular(4),
                topLeft: Radius.circular(60),
              )
          ),
          onPressed: (){

            if(index < onboardingList.length-1){
              pageController.animateToPage(
                  index+1,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeIn
              );
            }
            else{

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (c){
                return HomeScreen();
              }));
            }

          },
          child: Text(
            onboardingList[index].buttonText,
            style: TextStyle(
                color: AppColors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20
            ),
          ),
        ),
        SizedBox(height: 30,),
        SmoothControllor(
            pageController: pageController,
        )
      ],
    );
  }
}
