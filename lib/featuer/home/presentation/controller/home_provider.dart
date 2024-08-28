import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/core/utilies/my_hive.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';


import '../../data/model/item_grid_model.dart';

class HomeProvider extends ChangeNotifier {
  var boxItems =  Hive.box<ItemGridModel>(MyHive.itemsBox);
  List<ItemGridModel> itemGridList = [

      ItemGridModel(image: AppImages.singleDonuts, title: AppTexts.donuts, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.pieceOfCake, title: AppTexts.pieceOfCake, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.singleDonuts, title: AppTexts.donuts, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.pieceOfCake, title: AppTexts.pieceOfCake, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.singleDonuts, title: AppTexts.donuts, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.pieceOfCake, title: AppTexts.pieceOfCake, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.singleDonuts, title: AppTexts.donuts, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.pieceOfCake, title: AppTexts.pieceOfCake, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.singleDonuts, title: AppTexts.donuts, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.pieceOfCake, title: AppTexts.pieceOfCake, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.singleDonuts, title: AppTexts.donuts, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.pieceOfCake, title: AppTexts.pieceOfCake, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.singleDonuts, title: AppTexts.donuts, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.pieceOfCake, title: AppTexts.pieceOfCake, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.singleDonuts, title: AppTexts.donuts, desc: AppTexts.flaworCreamy, price: 45),
      ItemGridModel(image: AppImages.pieceOfCake, title: AppTexts.pieceOfCake, desc: AppTexts.flaworCreamy, price: 45),

  ];
  List <ItemGridModel> items = [];// for get box
  getItemsFromBox(){
    items = boxItems.values.toList();//>> sorting in cashe....
  }

  updatefav(int index){
    itemGridList[index].favOrNot = ! itemGridList[index].favOrNot;
    boxItems.putAt(index, itemGridList[index]);
    notifyListeners();
  }



}