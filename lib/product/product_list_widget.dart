import 'package:flutter/material.dart';
import 'package:ex04/product/product_card_widget.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.scrollDerection});
  final Axis scrollDerection;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrollDerection,
      children: const [
        ProductCard(
          titulo: "portal-1",
          descricao: 'Action',
          image: 'images/portal-2.jpg',
          icon: 'images/estrela-4.png',
        ),
        ProductCard(
          titulo: 'The Witcher 3: Wild Hunt',
          descricao: 'Action',
          image: 'images/the_elder.jpeg',
          icon: 'images/estrela-4.png',
        ),
        ProductCard(
          titulo: 'portal-2',
          descricao: 'Shoort',
          image: 'images/portal-2.jpg',
          icon: 'images/estrela-4.png',
        ),
        ProductCard(
          titulo: 'Tomb Raider',
          descricao: 'Action',
          image: 'images/red_dead.jpeg',
          icon: 'images/estrela-4.png',
        ),
        ProductCard(
          titulo: 'Mario',
          descricao: 'Divercion',
          image: 'images/portal-2.jpg',
          icon: 'images/estrela-4.png',
        ),
        ProductCard(
          titulo: 'Need-For-Speed',
          descricao: 'Corrida',
          image: 'images/Need-For-Speed.jpg',
          icon: 'images/estrela-4.png',
        ),
        ProductCard(
          titulo: 'Mortal Combate',
          descricao: 'Action',
          image: 'images/mortalconbate.jpg',
          icon: 'images/estrela-4.png',
        ),
        ProductCard(
          titulo: 'Product',
          descricao: 'Sport',
          image: 'images/portal-2.jpg',
          icon: 'images/estrela-4.png',
        ),
      ],
    );
  }
}
