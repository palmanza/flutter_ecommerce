import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/Product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final VoidCallback? press;
  const ItemCard({
    Key? key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Hero(
                tag: "${product!.id}",
                child: Image.asset(product!.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product!.title,
              style: const TextStyle(color: kTextColor),
            ),
          ),
          Text(
            "\$${product!.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
