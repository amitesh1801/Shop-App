import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/Products.dart';

import 'package:shop_app/constants.dart';

class HomeScreen extends StatelessWidget {
  final List<Products> loadedProducts = [
    Products(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl: 'assets/images/product_0.png',
    ),
    Products(
      id: 'p2',
      title: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl: 'assets/images/product_1.png',
    ),
    Products(
      id: 'p3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl: 'assets/images/product_2.png',
    ),
    Products(
      id: 'p4',
      title: 'A Pan',
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
                itemBuilder: (ctx, i) => Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: secondaryColorlight,
                          borderRadius:
                              BorderRadius.circular(defaultBorderRadius)),
                      child: Image.asset(
                        loadedProducts[i].imageUrl,
                        height: 132,
                      ),
                    ),
                    // padding if needed
                    Text("your text"),
                  ],
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 152,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
              ),
            )
          ])),
    );
  }
}
