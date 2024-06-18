import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../../../../../domain/entities/recommended_for_you_entity.dart';
import '../../../../../../domain/usecases/recommended_usecase.dart';
part 'recommended_state.dart';

@injectable
class RecommendedCubit extends Cubit<RecommendedState> {
  RecommendedUseCase recommendedUseCase;

  @factoryMethod
  RecommendedCubit(this.recommendedUseCase) : super(RecommendedInitial());

  getRecommended(){
    emit(RecommendedLoading());
    var recommended = recommendedUseCase.getRecommended();
    emit(RecommendedSuccess(recommended));
  }
}
