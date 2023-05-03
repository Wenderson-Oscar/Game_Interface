import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String image;
  const CategoryItem({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.yellow,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(64),
        ),
      ),
      child: SizedBox(
        child: TextButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          child: Image.asset(image),
        ),
      ),
    );
  }
}