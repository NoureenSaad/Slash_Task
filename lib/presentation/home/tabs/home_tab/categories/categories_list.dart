import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_task/core/reusable_component/see_more_widget.dart';
import 'package:slash_task/core/utils/colors_manager.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/categories/categories.dart';
import '../../../../../core/utils/strings_manager.dart';
import '../../../../../data/models/category_model.dart';

class CategoriesList extends StatelessWidget {
  List<CategoryModel> categories = CategoryModel.getCategories();
  CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(StringsManager.categoriesTitle,style: Theme.of(context).textTheme.headlineLarge,),
            const SeeMoreWidget()
          ],
        ),
        const SizedBox(height: 10,),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context,index)=>const SizedBox(width: 10,),
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
