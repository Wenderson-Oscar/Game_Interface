import 'package:flutter/material.dart';
import 'package:ex04/widgets/widgets_category.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(scrollDirection: Axis.horizontal, child: Row(children: [ CategoryItem(
        image: "images/games.png",
      ),
      CategoryItem(
        image: "images/games.png",
      ),
      CategoryItem(
        image: "images/games.png",
      ),
      CategoryItem(
        image: "images/games.png",
      )],) 
     
    );
  }
}