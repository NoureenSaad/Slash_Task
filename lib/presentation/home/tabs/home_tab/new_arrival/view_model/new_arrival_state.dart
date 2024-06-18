part of 'new_arrival_cubit.dart';

@immutable
sealed class NewArrivalState {}

final class NewArrivalInitial extends NewArrivalState {}
final class NewArrivalLoading extends NewArrivalState {}
final class NewArrivalSuccess extends NewArrivalState {
  List<NewArrivalEntity> newArrival;
  NewArrivalSuccess(this.newArrival);
}
