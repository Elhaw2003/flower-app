class ItemGridModel {
  final String image;
  final String title;
  final String desc;
  final double price;
   bool favOrNot;

  ItemGridModel({

    required this.image,
    required this.title,
    required this.desc,
    required this.price,
     this.favOrNot = false,

});

}