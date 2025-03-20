import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerStore;
  final String burgerPrice;
  final dynamic burgerColor;
  final String imageName;

  const BurgerTile({
    super.key,
    required this.burgerFlavor,
    required this.burgerStore,
    required this.burgerPrice,
    required this.burgerColor,
    required this.imageName,
  });

  @override
  Widget build(BuildContext) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: burgerColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            //PriceTag
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: burgerColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: burgerColor[800]),
                  ),
                )
              ],
            ),
            //Burger picture
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 34.0, vertical: 12),
              child: Image.asset(imageName),
            ),
            //Burger flavor text
            Text(burgerFlavor,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            //Espacio entre textos
            const SizedBox(
              height: 4,
            ),
            Text(burgerStore,
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
