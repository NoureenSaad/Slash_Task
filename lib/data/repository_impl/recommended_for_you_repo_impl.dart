import 'package:slash_task/domain/entities/recommended_for_you_entity.dart';
import 'package:slash_task/domain/repository_contract/recommended_for_you_repo.dart';
import '../models/recommended_for_you_model.dart';

class RecommendedForYouRepoImpl extends RecommendedForYouRepo{
  List<RecommendedForYouModel> recommendedForYouModel = [
    RecommendedForYouModel(price: 27.99,image: "assets/images/recommended_1.png",id: 1,name: "Recommended 1"),
    RecommendedForYouModel(price: 47.99,image: "assets/images/recommended_2.png",id: 2,name: "Recommended 2"),
    RecommendedForYouModel(price: 18.99,image: "assets/images/recommended_3.png",id: 3,name: "Recommended 3"),
    RecommendedForYouModel(price: 36.99,image: "assets/images/recommended_4.png",id: 4,name: "Recommended 4"),
    RecommendedForYouModel(price: 25.99,image: "assets/images/recommended_5.png",id: 5,name: "Recommended 5"),
  ];

  @override
  List<RecommendedForYouEntity> getRecommendedForYou() {
    var recommendedForYouModelList = recommendedForYouModel;
    var recommendedForYouEntityList = recommendedForYouModelList.map((recommendedForYou) => recommendedForYou.toRecommendedForYouEntity()).toList();
    return recommendedForYouEntityList;
  }

}