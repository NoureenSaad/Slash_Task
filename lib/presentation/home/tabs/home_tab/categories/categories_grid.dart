import 'package:flutter/material.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/categories/categories.dart';

import '../../../../../data/models/category_model.dart';

class CategoriesGrid extends StatelessWidget {
  List<CategoryModel> categories = CategoryModel.getCategories();
  CategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Categories",style: Theme.of(context).textTheme.headlineLarge,),
        SizedBox(height: 10,),
        Expanded(
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 5),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context,index){
                return CategoriesWidget(name: categories[index].title, iconPath: categories[index].imagePath);
              }
          ),
        ),
      ],
    );
  }
}
