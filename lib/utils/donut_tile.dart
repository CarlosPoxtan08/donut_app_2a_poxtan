import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutStore;
  final String donutPrice;
  final dynamic
      donutColor; //dynamic porque será de tipo Color y también usará []
  final String imageName;

  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutStore,
    required this.donutPrice,
    required this.donutColor,
    required this.imageName,
    required Function(int p1, double p2) onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            // Price tag
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: donutColor[800]),
                  ),
                )
              ],
            ),

            //Donut picture
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12),
              child: Image.asset(imageName),
            ),

            //Donut flavor text
            Text(donutFlavor,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            //Espacio entre textos
            const SizedBox(
              height: 4,
            ),
            Text(donutStore,
                style: TextStyle(
                    //fontWeight: FontWeight.normal,
                    //fontSize: 12,
                    color: Colors.grey[600])),
            //Love icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.pink[400],
                  ),
                  const Text(
                    "Add",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
