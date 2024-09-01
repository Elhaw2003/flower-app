import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/featuer/end/presentation/view/widget/end_body.dart';
import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pinck,
      body: EndBody()
    );
  }
}
