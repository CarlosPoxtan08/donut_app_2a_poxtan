import 'package:donut_app_2a_poxtan/utils/burger_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  //Lista de hamburguesas
  final List burgerOnSale = [
    // [ burgerFlavor, burgerStore, burgerPrice, burgerColor, imageName ]
    [
      "Classic Burger",
      "Burger King",
      "36",
      Colors.blue,
      "lib/images/Classic_burger.jpg"
    ],
    [
      "Bacon Burger",
      "Carls Jr",
      "45",
      Colors.red,
      "lib/images/Bacon_burger.png"
    ],
    [
      "Hawaian Burger",
      "Mc Donalds",
      "84",
      Colors.purple,
      "lib/images/Hawaian_burger.png"
    ],
    [
      "Double Bacon Burger",
      "Mitica",
      "95",
      Colors.green,
      "lib/images/Double_bacon_burger.png"
    ],
    [
      "Chicken Sandwich",
      "KFC",
      "36",
      Colors.blue,
      "lib/images/Chicken_sandwich.png"
    ],
    [
      "Buffalo Chicken Sandwich",
      "Las alitas",
      "45",
      Colors.red,
      "lib/images/Buffalo_chicken_sandwich.png"
    ],
    [
      "Mexicana Burger",
      "Fridays",
      "84",
      Colors.purple,
      "lib/images/Mexicana_burger.png"
    ],
    [
      "Monstruosa Burger",
      "Angry Angus",
      "95",
      Colors.green,
      "lib/images/Monstruosa_burger.png"
    ],
  ];
  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //cuanto elementos tiene
        itemCount: burgerOnSale.length,
        padding: const EdgeInsets.all(12),
        //Encargado de organizar la cuadricula
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //Determina el numero de columnas
            crossAxisCount: 2,
            //Relación de aspecto
            childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          //Elemento individual de una cuadricula
          return BurgerTile(
            burgerFlavor: burgerOnSale[index][0],
            burgerStore: burgerOnSale[index][1],
            burgerPrice: burgerOnSale[index][2],
            burgerColor: burgerOnSale[index][3],
            imageName: burgerOnSale[index][4],
          );
        });
  }
}
