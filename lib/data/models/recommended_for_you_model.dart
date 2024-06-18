import 'package:slash_task/domain/entities/recommended_for_you_entity.dart';

/// id : 1
/// name : "Recommended 1"
/// price : 27.99
/// image : "assets/images/recommended_1.png"

class RecommendedForYouModel {
  RecommendedForYouModel({
      this.id, 
      this.name, 
      this.price, 
      this.image,});

  RecommendedForYouModel.fromJson(dynamic json) {
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

  RecommendedForYouEntity toRecommendedForYouEntity(){
    return RecommendedForYouEntity(
      price: price,
      image: image,
      id: id,
      name: name
    );
  }
}