part of 'best_selling_cubit.dart';

@immutable
sealed class BestSellingState {}

final class BestSellingInitial extends BestSellingState {}
final class BestSellingLoading extends BestSellingState {}
final class BestSellingSuccess extends BestSellingState {
  List<BestSellingEntity> bestSelling;
  BestSellingSuccess(this.bestSelling);
}
