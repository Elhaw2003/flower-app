import 'package:flutter/material.dart';

import '../../../../../core/utilies/app_colors.dart';
import '../../../../../core/utilies/app_texts.dart';

class SearchHomeScreen extends StatelessWidget {
  const SearchHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.brown,width: 0.5)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  AppTexts.searcHere,
                  style: TextStyle(
                      color: AppColors.brown.withOpacity(0.3),
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12,),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: AppColors.pinck
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.search_outlined),
            ),
          ),
        ],
      ),
    );
  }
}
