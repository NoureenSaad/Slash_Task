import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/di/di.dart';
import 'package:slash_task/core/reusable_component/product_widget.dart';
import 'package:slash_task/core/utils/strings_manager.dart';
import '../../../../../../core/reusable_component/see_more_widget.dart';
import '../view_model/best_selling_cubit.dart';

class BestSellingGrid extends StatelessWidget {
  const BestSellingGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(StringsManager.bestSellingTitle,style: Theme.of(context).textTheme.headlineLarge,),
            const SeeMoreWidget()
          ],
        ),
        const SizedBox(height: 10,),
        BlocProvider(
          create: (context)=>getIt<BestSellingCubit>()..getBestSelling(),
          child: BlocBuilder<BestSellingCubit,BestSellingState>(
            builder: (context,state){
              if(state is BestSellingSuccess){
                return Expanded(
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 5),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return ProductWidget(price: state.bestSelling[index].price,name: state.bestSelling[index].name,imagePath: state.bestSelling[index].image,);
                        },
                        itemCount: state.bestSelling.length
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
