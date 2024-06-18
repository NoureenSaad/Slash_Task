import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../../../domain/entities/best_selling_entity.dart';
import '../../../../../../domain/usecases/best_selling_usecase.dart';

part 'best_selling_state.dart';

@injectable
class BestSellingCubit extends Cubit<BestSellingState> {
  BestSellingUseCase bestSellingUseCase;

  @factoryMethod
  BestSellingCubit(this.bestSellingUseCase) : super(BestSellingInitial());

  getBestSelling(){
    emit(BestSellingLoading());
    var bestSelling = bestSellingUseCase.getBestSelling();
    emit(BestSellingSuccess(bestSelling));
  }
}
