import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../../../../../domain/entities/new_arrival_entity.dart';
import '../../../../../../domain/usecases/new_arrival_usecase.dart';
part 'new_arrival_state.dart';

@injectable
class NewArrivalCubit extends Cubit<NewArrivalState> {
  NewArrivalUseCase newArrivalUseCase;

  @factoryMethod
  NewArrivalCubit(this.newArrivalUseCase) : super(NewArrivalInitial());

  getNewArrival(){
    emit(NewArrivalLoading());
    var newArrivalProducts = newArrivalUseCase.getNewArrival();
    emit(NewArrivalSuccess(newArrivalProducts));
  }
}
