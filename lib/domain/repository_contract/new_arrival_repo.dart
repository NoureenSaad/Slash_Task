import '../entities/new_arrival_entity.dart';

abstract class NewArrivalRepo{
  List<NewArrivalEntity> getNewArrival();
}