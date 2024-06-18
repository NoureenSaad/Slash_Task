import 'package:slash_task/domain/entities/new_arrival_entity.dart';

/// id : 1
/// name : "New Arrival 1"
/// price : 34.99
/// image : "assets/images/new_arrival_1.png"

class NewArrivalModel {
  NewArrivalModel({
      this.id, 
      this.name, 
      this.price, 
      this.image,});

  NewArrivalModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    image = json['image'];
  }
  int? id;
  String? name;
  double? price;
  String? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['price'] = price;
    map['image'] = image;
    return map;
  }

  NewArrivalEntity toNewArrivalEntity(){
    return NewArrivalEntity(
      name: name,
      id: id,
      image: image,
      price: price
    );
  }
}