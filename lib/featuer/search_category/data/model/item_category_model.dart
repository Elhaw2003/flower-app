class ItemCategoryModel {

  String image;
  String title;
  String desc;
  double price;
  int count;


  ItemCategoryModel({

    required this.image,
    required this.title,
    required this.desc,
    required this.price,
     this.count = 0,

});

}