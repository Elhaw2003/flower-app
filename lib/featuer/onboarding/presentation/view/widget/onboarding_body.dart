import 'package:flower_app/featuer/onboarding/presentation/view/widget/onboarding_item.dart';
import 'package:flutter/material.dart';
import '../../../data/onboarding_list.dart';

class OnboardingBody extends StatelessWidget {
   OnboardingBody({super.key, });
  PageController  pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onboardingList.length,
      itemBuilder: (context, index) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              onboardingList[index].cover,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            OnboardingItem(
                index: index,
              pageController: pageController,
            ),
          ],
        );
      },
    );
  }
}
