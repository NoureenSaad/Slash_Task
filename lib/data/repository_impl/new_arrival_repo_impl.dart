import 'package:injectable/injectable.dart';
import 'package:slash_task/domain/entities/new_arrival_entity.dart';
import 'package:slash_task/domain/repository_contract/new_arrival_repo.dart';
import '../models/new_arrival_model.dart';

@Injectable(as: NewArrivalRepo)
class NewArrivalRepoImpl extends NewArrivalRepo{
  List<NewArrivalModel> newArrivalModel=[
    NewArrivalModel(name: "New Arrival 1",id: 1,image: "assets/images/new_arrival_1.png",price: 34.99),
    NewArrivalModel(name: "New Arrival 2",id: 2,image: "assets/images/new_arrival_2.png",price: 54.99),
    NewArrivalModel(name: "New Arrival 3",id: 3,image: "assets/images/new_arrival_3.png",price: 21.99),
    NewArrivalModel(name: "New Arrival 4",id: 4,image: "assets/images/new_arrival_4.png",price: 42.99),
    NewArrivalModel(name: "New Arrival 5",id: 5,image: "assets/images/new_arrival_5.png",price: 29.49),
  ];


  @override
  List<NewArrivalEntity> getNewArrival() {
    var newArrivalModelList = newArrivalModel;
    var newArrivalEntityList = newArrivalModelList.map((newArrival) => newArrival.toNewArrivalEntity()).toList();
    return newArrivalEntityList;
  }
}