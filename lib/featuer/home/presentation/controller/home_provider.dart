import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flutter/cupertino.dart';

import '../../data/model/item_grid_model.dart';

class HomeProvider extends ChangeNotifier{

  List<ItemGridModel> itemGridList = [

      ItemGridModel(image: AppImages.singleDonuts, title: AppTexts.donuts, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.pieceOfCake, title: AppTexts.pieceOfCake, desc: AppTexts.flaworCreamy, price: 45),
  ];

  favOrNot(int index){

    itemGridList[index].favOrNot = ! itemGridList[index].favOrNot;
    notifyListeners();

  }



}