
import 'package:hive/hive.dart';
part 'item_category_model.g.dart';
@HiveType(typeId: 1)
class ItemCategoryModel extends HiveObject {
  @HiveField(5)
  String image;
  @HiveField(6)
  String title;
  @HiveField(7)
  String smallDesc;
  @HiveField(8)
  String bigDesc;
  @HiveField(9)
  double price;
  @HiveField(10)
  int count;


  ItemCategoryModel({

    required this.image,
    required this.title,
    required this.smallDesc,
    required this.bigDesc,
    required this.price,
     this.count = 0,

});

}