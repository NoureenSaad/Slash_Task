import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_task/core/utils/colors_manager.dart';

class CategoriesWidget extends StatelessWidget {
  String name;
  String iconPath;
  CategoriesWidget({super.key,required this.name,required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundColor: ColorsManager.textColor,
          child: Center(child: SvgPicture.asset(iconPath)),
        ),
        Text(name,style: Theme.of(context).textTheme.labelMedium,)
      ],
    );
  }
}
