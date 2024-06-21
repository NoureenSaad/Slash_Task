import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/di/di.dart';
import 'package:slash_task/core/reusable_component/product_widget.dart';
import '../view_model/best_selling_cubit.dart';

class BestSellingList extends StatelessWidget {
  const BestSellingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Best Selling",style: Theme.of(context).textTheme.headlineLarge,),
        SizedBox(height: 10,),
        BlocProvider(
          create: (context)=>getIt<BestSellingCubit>()..getBestSelling(),
          child: BlocBuilder<BestSellingCubit,BestSellingState>(
            builder: (context,state){
              if(state is BestSellingSuccess){
                return Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return ProductWidget(price: state.bestSelling[index].price,name: state.bestSelling[index].name,imagePath: state.bestSelling[index].image,);
                        },
                        separatorBuilder: (context,index)=>SizedBox(width: 5,),
                        itemCount: state.bestSelling.length
                    )
                );
              }
              else{
                return Center(child: CircularProgressIndicator.adaptive(),);
              }
            },
          ),
        )
      ],
    );
  }
}
