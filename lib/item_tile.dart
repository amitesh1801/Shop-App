import 'package:flutter/material.dart';

import './constants.dart';

class itemTile  extends StatelessWidget {

  final String image;
  final String title;
  final double price;

  const itemTile({required this.price, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Column(
                      children: [
                        Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: bgColor,
                                borderRadius:
                                    BorderRadius.circular(defaultBorderRadius)),
                            child: Column(
                              children: [
                                
                                Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: secondaryColorlight,
                                      borderRadius: BorderRadius.circular(
                                          defaultBorderRadius)),
                                  child: Image.asset(
                                    image,
                                    height: 132,
                                  ),
                                ),
      
                                const SizedBox(
                                  height: defaultPadding / 2,
                                ),
      
                                Row(
                                  children: [
                                    Flexible(
                                        child: Text(
                                      title,
                                      style: TextStyle(color: Colors.black),
                                    )),
                                    
                                const SizedBox(width: 30,),
                                    Text('\$' + price.toString(),
                                    style: Theme.of(context).textTheme.subtitle2,),
                                  ],
                                ),
      
                              ],
                            )),
                      ],
                    ),
    );
  }
}