import 'package:slash_task/domain/entities/best_selling_entity.dart';

/// id : 1
/// name : "Best Seller 1"
/// price : 29.99
/// image : "assets/images/best_seller_1.png"

class BestSellingModel {
  BestSellingModel({
      this.id, 
      this.name, 
      this.price, 
      this.image,});

  BestSellingModel.fromJson(dynamic json) {
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

  BestSellingEntity toBestSellingEntity(){
    return BestSellingEntity(
      name: name,
      id: id,
      image: image,
      price: price
    );
  }

}