import 'package:flutter/material.dart';

class CategoryModel{
  String title;
  String imagePath;

  CategoryModel({required this.title, required this.imagePath});

  static List<CategoryModel> getCategories()=>[
    CategoryModel(title: "Fashion", imagePath: "assets/icons/fashion.svg"),
    CategoryModel(title: "Games", imagePath: "assets/icons/game.svg"),
    CategoryModel(title: "Accessories", imagePath: "assets/icons/accessories.svg"),
    CategoryModel(title: "Books", imagePath: "assets/icons/books.svg"),
    CategoryModel(title: "Artifacts", imagePath: "assets/icons/game.svg"),
  ];
}