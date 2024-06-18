import 'package:slash_task/domain/entities/best_selling_entity.dart';

abstract class BestSellingRepo{
  List<BestSellingEntity> getBestSelling();
}