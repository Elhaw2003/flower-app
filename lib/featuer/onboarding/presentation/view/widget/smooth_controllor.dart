import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../data/onboarding_list.dart';

class SmoothControllor extends StatelessWidget {
   SmoothControllor({super.key, required this.pageController});
   PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,  // PageController
      count:  onboardingList.length,
      effect:  ExpandingDotsEffect(
          activeDotColor: AppColors.brown,
          dotColor: AppColors.brown.withOpacity(0.2),
          dotHeight: 7,
          dotWidth: 7,
          spacing: 6
      ),  // your preferred effect
    );
  }
}
