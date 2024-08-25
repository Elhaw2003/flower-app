import 'package:flower_app/featuer/onboarding/presentation/view/onboarding_screen.dart';
import 'package:flower_app/featuer/splash/presentation/view/widget/splash_body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(
        seconds: 4
      ),
        (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (c){
          return OnboardingScreen();
        }));
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBody(),
    );
  }
}
