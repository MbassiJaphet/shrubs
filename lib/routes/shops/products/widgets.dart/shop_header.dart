import 'package:flutter/material.dart';

import 'package:shrubs/routes/routes.dart';
import 'package:shrubs/models/models.dart';

class ShopHeader extends StatelessWidget {

  final Shop shop;
  ShopHeader(this.shop);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
                   width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(this.shop.picture),
                      fit: BoxFit.fill
                    )
                  )
                ),
        SizedBox(height: 8)
      ],
    );
  }
}