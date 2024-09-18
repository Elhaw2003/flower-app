import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/core/utilies/my_hive.dart';
import 'package:flower_app/featuer/search_category/data/model/item_category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ItemSearchProvider extends ChangeNotifier{
  // var categoriesBox =  Hive.box<ItemCategoryModel>(MyHive.categoriesBox);
  List <ItemCategoryModel> catigories = [
    ItemCategoryModel(
        image: AppImages.oreoMilkshake,
        title: AppTexts.oreoMilkshake,
        smallDesc: AppTexts.smallDescSearchCategory,
        bigDesc: AppTexts.bigDescSearchCategory,
        price: 45),
    ItemCategoryModel(
        image: AppImages.vanillaMilkshake,
        title: AppTexts.vanillaMilkshake,
        smallDesc: AppTexts.smallDescSearchCategory,
        bigDesc: AppTexts.bigDescSearchCategory,
        price: 45),
    ItemCategoryModel(
        image: AppImages.chocolateMilkshake,
        title: AppTexts.chocolateMilkshake,
        smallDesc: AppTexts.smallDescSearchCategory,
        bigDesc: AppTexts.bigDescSearchCategory,
        price: 45),
    ItemCategoryModel(
        image: AppImages.mangoMilkshake,
        title: AppTexts.mangoMilkshake,
        smallDesc: AppTexts.smallDescSearchCategory,
        bigDesc: AppTexts.bigDescSearchCategory,
        price: 45),
  ];
  List <ItemCategoryModel> searchItemList = [];//catch items in form field
  searchItemInFormField(value){
    searchItemList=catigories.where((element) => element.title.toLowerCase().contains(value.toLowerCase())).toList();
    notifyListeners();
  }// catch items when search in form field
  plusCountItemInCategoryList(int index){
    catigories[index].count+=1;
    notifyListeners();
}
  minusCountItemInCategoryList(int index){
    if(catigories[index].count > 0 ){
      catigories[index].count-=1;
    }
    notifyListeners();
  }
  List<ItemCategoryModel> cartList = [];
  addItemInCartList(index){
    cartList.add(index);
    notifyListeners();
  }
  plusCountItemInCartList(int index){
    catigories[index].count+=1;
    notifyListeners();
  }
  minusCountItemInCartList(int index){
    if(catigories[index].count > 0 ){
      catigories[index].count-=1;
    }
    notifyListeners();
  }
  removeItemInCartList(index){
    if(index >=0 && index < cartList.length){
      cartList.removeAt(index);
      catigories[index].count = 0;
    }
    notifyListeners();
  }
}