

import 'package:hive/hive.dart';
 part 'item_grid_model.g.dart';

@HiveType(typeId: 0)
class ItemGridModel extends HiveObject {
  // دي حاجة بتخيني اقدر اعدل ع ال object ب save
  @HiveField(0)
   String image;
  @HiveField(1)
   String title;
  @HiveField(2)
   String desc;
  @HiveField(3)
   double price;
  @HiveField(4)
   bool favOrNot;

  ItemGridModel({

    required this.image,
    required this.title,
    required this.desc,
    required this.price,
     this.favOrNot = false,

});

}