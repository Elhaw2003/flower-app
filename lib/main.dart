import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flower_app/core/utilies/my_hive.dart';
import 'package:flower_app/featuer/home/data/model/item_grid_model.dart';
import 'package:flower_app/featuer/search_category/presentation/controller/item_search_provider.dart';
import 'package:flower_app/featuer/splash/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';


import 'package:provider/provider.dart';
import 'featuer/home/presentation/controller/home_provider.dart';
import 'featuer/search_category/data/model/item_category_model.dart';
main()async{
  await Hive.initFlutter();
  Hive.registerAdapter(ItemGridModelAdapter());
  Hive.registerAdapter(ItemCategoryModelAdapter());
  await Hive.openBox<ItemGridModel>(MyHive.itemsGridBox);
  await Hive.openBox<ItemCategoryModel>(MyHive.categoriesBox);
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (context) => HomeProvider(),),
        ChangeNotifierProvider( create: (context) => ItemSearchProvider(),),
      ],
      child: FlowerApp()));
}
class FlowerApp extends StatefulWidget {
  const FlowerApp({super.key});

  @override
  State<FlowerApp> createState() => _FlowerAppState();
}

class _FlowerAppState extends State<FlowerApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<HomeProvider>(context,listen: false).addToBox();
    Provider.of<ItemSearchProvider>(context,listen: false).addCategoriesListInBox();

  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        fontFamily: AppFonts.roboto
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
