import '../entities/recommended_for_you_entity.dart';

abstract class RecommendedForYouRepo{
  List<RecommendedForYouEntity> getRecommendedForYou();
}