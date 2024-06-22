import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/strings_manager.dart';
import '../../../../core/utils/colors_manager.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(StringsManager.titleName)),
      body: const Center(
        child: Icon(Icons.favorite_border,color: ColorsManager.searchIconColor,),
      ),
    );
  }
}
