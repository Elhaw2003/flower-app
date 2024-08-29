import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/core/utilies/my_hive.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';


import '../../data/model/item_grid_model.dart';

class HomeProvider extends ChangeNotifier {
  var boxItems =  Hive.box<ItemGridModel>(MyHive.itemsBox);
  List<ItemGridModel> itemGridList = [];
  updatefav(int index) {
    itemGridList[index].favOrNot = !itemGridList[index].favOrNot;
    boxItems.putAt(index, itemGridList[index]);
    notifyListeners();
  }
  addToBox( ) {
    if(boxItems.isEmpty) {
      boxItems.addAll([
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
    ]);
    }
    itemGridList=boxItems.values.toList();
    //  كدا بضيف كل الليست جوا لبوكس
  }


}