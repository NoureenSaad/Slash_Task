import 'package:injectable/injectable.dart';
import 'package:slash_task/domain/repository_contract/new_arrival_repo.dart';
import '../entities/new_arrival_entity.dart';

@injectable
class NewArrivalUseCase{
  NewArrivalRepo newArrivalRepo;

  @factoryMethod
  NewArrivalUseCase(this.newArrivalRepo);

  List<NewArrivalEntity> getNewArrival(){
    return newArrivalRepo.getNewArrival();
  }
}