class ItemCategoryModel {

  String image;
  String title;
  String smallDesc;
  String bigDesc;
  double price;
  int count;


  ItemCategoryModel({

    required this.image,
    required this.title,
    required this.smallDesc,
    required this.bigDesc,
    required this.price,
     this.count = 1,

});

}