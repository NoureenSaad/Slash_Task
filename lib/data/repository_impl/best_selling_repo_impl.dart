import 'package:injectable/injectable.dart';
import 'package:slash_task/data/models/best_selling_model.dart';
import 'package:slash_task/domain/entities/best_selling_entity.dart';
import 'package:slash_task/domain/repository_contract/best_selling_repo.dart';

@Injectable(as: BestSellingRepo)
class BestSellingRepoImpl extends BestSellingRepo{
  List<BestSellingModel> bestSellingModel = [
    BestSellingModel(price: 29.99,image: "assets/images/best_seller_1.png",id: 1,name: "Best Seller 1"),
    BestSellingModel(price: 49.99,image: "assets/images/best_seller_2.png",id: 2,name: "Best Seller 2"),
    BestSellingModel(price: 19.99,image: "assets/images/best_seller_3.png",id: 3,name: "Best Seller 3"),
    BestSellingModel(price: 39.99,image: "assets/images/best_seller_4.png",id: 4,name: "Best Seller 4"),
    BestSellingModel(price: 24.99,image: "assets/images/best_seller_5.png",id: 5,name: "Best Seller 5"),
  ];

  @override
  List<BestSellingEntity> getBestSelling() {
    var bestSellingModelList = bestSellingModel;
    var bestSellingEntityList = bestSellingModelList.map((bestSelling) => bestSelling.toBestSellingEntity()).toList();
    return bestSellingEntityList;
  }
}