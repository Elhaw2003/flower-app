import 'package:flower_app/core/utilies/app_colors.dart';
import 'package:flower_app/core/widget/custom_driver.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../core/utilies/app_fonts.dart';
import '../../../../home/presentation/controller/home_provider.dart';
import '../../../../home/presentation/view/widget/item_grid_widget.dart';

class SeeAllItemGridBody extends StatelessWidget {
  const SeeAllItemGridBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 25,),
        CustomDriver(),
        const SizedBox(height: 25,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              itemCount: Provider.of<HomeProvider>(context).items.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing:MediaQuery.of(context).size.height*0.02,
                crossAxisSpacing: MediaQuery.of(context).size.height*0.02,
                mainAxisExtent: 200,
              ),
              itemBuilder: (context, index) {
                return ItemGridWidget(index: index);
              },
            ),
          ),
        )
      ],
    );
  }
}
