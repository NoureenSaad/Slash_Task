import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/di/di.dart';
import 'package:slash_task/core/reusable_component/product_widget.dart';
import 'package:slash_task/core/utils/strings_manager.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/recommended/view_model/recommended_cubit.dart';

import '../../../../../../core/reusable_component/see_more_widget.dart';

class RecommendedGrid extends StatelessWidget {
  const RecommendedGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(StringsManager.recommendedTitle,style: Theme.of(context).textTheme.headlineLarge,),
            const SeeMoreWidget()
          ],
        ),
        const SizedBox(height: 10,),
        BlocProvider(
          create: (context)=>getIt<RecommendedCubit>()..getRecommended(),
          child: BlocBuilder<RecommendedCubit,RecommendedState>(
            builder: (context,state){
              if(state is RecommendedSuccess){
                return Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 5),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return ProductWidget(price: state.recommendedEntity[index].price,name: state.recommendedEntity[index].name,imagePath: state.recommendedEntity[index].image,);
                        },
                        itemCount: state.recommendedEntity.length
                    )
                );
              }
              else{
                return const Center(child: CircularProgressIndicator.adaptive(),);
              }
            },
          ),
        )
      ],
    );
  }
}
