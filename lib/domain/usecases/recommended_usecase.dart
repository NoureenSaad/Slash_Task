import 'package:injectable/injectable.dart';
import 'package:slash_task/domain/repository_contract/recommended_for_you_repo.dart';
import '../entities/recommended_for_you_entity.dart';

@injectable
class RecommendedUseCase{
  RecommendedForYouRepo recommendedForYouRepo;

  @factoryMethod
  RecommendedUseCase(this.recommendedForYouRepo);

  List<RecommendedForYouEntity> getRecommended(){
    return recommendedForYouRepo.getRecommendedForYou();
  }
}