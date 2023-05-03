import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.titulo,
      required this.descricao,
      required this.icon});
  final String image;
  final String titulo;
  final String descricao;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 241, 236, 236),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 10,
      //color: Color.fromARGB(215, 0, 0, 0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                image,
                width: 80,
                height: 70,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                //color: Colors.amber,
                width: 255,
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      child: Text(
                        titulo,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                    Text(
                      descricao,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          icon,
                          width: 90,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 29,
                          width: 99,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                )),
                            child: Text(
                              'View more',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          ),
                        )
                        //Image.asset("assets/Icon_Gaming.png")
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
