import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';

import 'model/onboarding_model.dart';

List <OnboardingModel> onboardingList = [
  
  OnboardingModel(
      cover: AppImages.onboarding1,
      image: AppImages.twoDonuts,
      title: AppTexts.donuts,
      description: AppTexts.descOnboarding,
      buttonText: AppTexts.next,
      imageWidth: 228.17,
      imageHeight: 111
  ),
  OnboardingModel(
      cover: AppImages.onboarding2,
      image: AppImages.pieceOfCake,
      title: AppTexts.pieceOfCake,
      description: AppTexts.descOnboarding,
      buttonText: AppTexts.next,
      imageWidth: 237,
      imageHeight: 183
  ),
  OnboardingModel(
      cover: AppImages.onboarding3,
      image: AppImages.milkshake,
      title: AppTexts.milkshake,
      description: AppTexts.descOnboarding,
      buttonText: AppTexts.next,
      imageWidth: 178,
      imageHeight: 239.45
  ),
];