import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/di/di.dart';
import 'package:slash_task/core/reusable_component/product_widget.dart';
import 'package:slash_task/core/utils/strings_manager.dart';
import '../../../../../../core/reusable_component/see_more_widget.dart';
import '../view_model/new_arrival_cubit.dart';

class NewArrivalList extends StatelessWidget {
  const NewArrivalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(StringsManager.newArrivalTitle,style: Theme.of(context).textTheme.headlineLarge,),
            const SeeMoreWidget()
          ],
        ),
        const SizedBox(height: 10,),
        BlocProvider(
          create: (context)=>getIt<NewArrivalCubit>()..getNewArrival(),
          child: BlocBuilder<NewArrivalCubit,NewArrivalState>(
            builder: (context,state){
              if(state is NewArrivalSuccess){
                return Expanded(
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return ProductWidget(price: state.newArrival[index].price,name: state.newArrival[index].name,imagePath: state.newArrival[index].image,);
                        },
                        separatorBuilder: (context,index)=>const SizedBox(width: 5,),
                        itemCount: state.newArrival.length
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
