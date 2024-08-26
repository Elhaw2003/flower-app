import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flower_app/featuer/splash/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'featuer/home/presentation/controller/home_provider.dart';
main(){
  runApp(ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: FlowerApp()));
}
class FlowerApp extends StatelessWidget {
  const FlowerApp({super.key});

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
