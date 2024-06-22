import 'package:flutter/material.dart';

import '../../../../core/utils/colors_manager.dart';

class CartTab extends StatelessWidget {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Slash.")),
      body: const Center(
        child: Icon(Icons.shopping_cart_outlined,color: ColorsManager.searchIconColor,),
      ),
    );
  }
}
