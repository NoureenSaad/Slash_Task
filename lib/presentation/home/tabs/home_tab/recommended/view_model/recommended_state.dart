part of 'recommended_cubit.dart';

@immutable
sealed class RecommendedState {}

final class RecommendedInitial extends RecommendedState {}
final class RecommendedLoading extends RecommendedState {}
final class RecommendedSuccess extends RecommendedState {
  List<RecommendedForYouEntity> recommendedEntity;
  RecommendedSuccess(this.recommendedEntity);
}
