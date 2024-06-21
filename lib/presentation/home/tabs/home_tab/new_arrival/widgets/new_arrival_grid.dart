import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_task/core/di/di.dart';
import 'package:slash_task/core/reusable_component/product_widget.dart';
import '../view_model/new_arrival_cubit.dart';

class NewArrivalGrid extends StatelessWidget {
  const NewArrivalGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("New Arrival",style: Theme.of(context).textTheme.headlineLarge,),
        SizedBox(height: 10,),
        BlocProvider(
          create: (context)=>getIt<NewArrivalCubit>()..getNewArrival(),
          child: BlocBuilder<NewArrivalCubit,NewArrivalState>(
            builder: (context,state){
              if(state is NewArrivalSuccess){
                return Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 5),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                          return ProductWidget(price: state.newArrival[index].price,name: state.newArrival[index].name,imagePath: state.newArrival[index].image,);
                        },
                        itemCount: state.newArrival.length
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
