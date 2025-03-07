import 'package:donut_app_2a_poxtan/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  //Lista de donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    [
      "Ice Cream",
      "Krispy Creme",
      "36",
      Colors.blue,
      "lib/images/icecream_donut.png"
    ],
    [
      "Strawberry",
      "Dunkin donuts",
      "45",
      Colors.red,
      "lib/images/strawberry_donut.png"
    ],
    [
      "Grape Ape",
      "Krispy Kreme",
      "84",
      Colors.purple,
      "lib/images/grape_donut.png"
    ],
    [
      "Choco",
      "Dunkin donuts",
      "95",
      Colors.brown,
      "lib/images/chocolate_donut.png"
    ],
  ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //cuanto elementos tiene
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(12),
        //Encargado de organizar la cuadricula
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //Determina el numero de columnas
            crossAxisCount: 2,
            //Relación de aspecto
            childAspectRatio: 1 / 1.5),
        itemBuilder: (context, index) {
          //Elemento individual de una cuadricula
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutStore: donutsOnSale[index][1],
            donutPrice: donutsOnSale[index][2],
            donutColor: donutsOnSale[index][3],
            imageName: donutsOnSale[index][4],
          );
        });
  }
}
