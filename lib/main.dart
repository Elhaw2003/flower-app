import 'package:flower_app/core/utilies/app_fonts.dart';
import 'package:flower_app/featuer/splash/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';

main(){
  runApp(FlowerApp());
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
