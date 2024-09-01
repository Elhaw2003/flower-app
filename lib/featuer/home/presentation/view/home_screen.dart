import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/utilies/app_images.dart';
import 'package:flower_app/core/utilies/app_texts.dart';
import 'package:flower_app/featuer/home/presentation/view/widget/appbar_widget.dart';
import 'package:flower_app/featuer/home/presentation/view/widget/banner_widget.dart';
import 'package:flower_app/featuer/home/presentation/view/widget/drawer_widget.dart';
import 'package:flower_app/featuer/home/presentation/view/widget/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: AppbarWidget(),
      ),
      drawer: DrawerWidget(),
      body: HomeBody(),
    );
  }
}
