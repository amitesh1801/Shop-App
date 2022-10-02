import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shop_app/Products.dart';
import './item_tile.dart';
import 'package:shop_app/constants.dart';

class HomeScreen extends StatelessWidget {
  final List<Products> loadedProducts = [
    Products(
      id: 'p1',
      title: 'White Shirt Pattern',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl: 'assets/images/product_0.png',
    ),
    Products(
      id: 'p2',
      title: 'Blue T-shirt',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl: 'assets/images/product_1.png',
    ),
    Products(
      id: 'p3',
      title: 'Full Sleeved Shirt',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl: 'assets/images/product_2.png',
    ),
    Products(
      id: 'p4',
      title: 'Green T-Shirt',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl: 'assets/images/product_3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: SvgPicture.asset("assets/icons/Cart.svg"),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Explore",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            Text(
              'the best outfits for you',
              style: TextStyle(fontSize: 18),
            ),
            Flexible(
              child: GridView.builder(
                padding: const EdgeInsets.all(10.0),
                itemCount: loadedProducts.length,
                itemBuilder: (ctx, i) => itemTile(price: loadedProducts[i].price, image: loadedProducts[i].imageUrl, title: loadedProducts[i].title),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 180,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
              ),
            )
          ])),
    );
  }
}
