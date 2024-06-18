import 'package:injectable/injectable.dart';
import 'package:slash_task/domain/repository_contract/best_selling_repo.dart';

import '../entities/best_selling_entity.dart';

@injectable
class BestSellingUseCase{
  BestSellingRepo bestSellingRepo;

  @factoryMethod
  BestSellingUseCase(this.bestSellingRepo);

  List<BestSellingEntity> getBestSelling(){
    return bestSellingRepo.getBestSelling();
}
}