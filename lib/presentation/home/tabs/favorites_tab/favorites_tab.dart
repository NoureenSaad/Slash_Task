import 'package:flutter/material.dart';

import '../../../../core/utils/colors_manager.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Slash.")),
      body: Center(
        child: Icon(Icons.favorite_border,color: ColorsManager.searchIconColor,),
      ),
    );
  }
}
