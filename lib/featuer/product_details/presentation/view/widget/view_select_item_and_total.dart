import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flutter/material.dart';

class ViewSelectItemAndTotal extends StatelessWidget {
  const ViewSelectItemAndTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightPink,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14,vertical: 15),
        child: Row(
          children: [
            Expanded(child: Text("Selected items  (5)")),
            Expanded(
                child: Text(
                    textAlign: TextAlign.end,
                    "Total : 225. LE"
                )),
          ],
        ),
      ),
    );
  }
}
