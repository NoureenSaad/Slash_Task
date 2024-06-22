import 'package:flutter/material.dart';
import '../utils/colors_manager.dart';

class TabWidget extends StatelessWidget {
  String tabTitle;
  IconData icon;
  TabWidget({super.key,required this.tabTitle,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: ColorsManager.textColor,
        ),
        Text(
          tabTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        )
      ],
    );
  }
}
