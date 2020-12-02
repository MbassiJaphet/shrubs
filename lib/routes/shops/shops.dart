import 'package:flutter/material.dart';

import 'package:shrubs/routes/notifications/widgets/notifications_helpers.dart';
import 'package:shrubs/models/models.dart';
import 'package:shrubs/routes/shops/widgets/shop_card.dart';

class ShopsPage extends StatefulWidget {

  final String title = 'Shops';
  static final String route = '/Shops';
  @override
  _ShopsPageState createState() => _ShopsPageState();
}

class _ShopsPageState extends State<ShopsPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
            backgroundColor: Color(0xFFf5f5f5),
            appBar: AppBar(
              title: Text(widget.title, style: TextStyle(color: Color(0xFF442B2D), fontSize: 26, fontWeight: FontWeight.bold)),
              backgroundColor: Colors.white,
              elevation: 1,
              actions: <Widget>[
                IconButton(icon: Icon(Icons.shopping_cart, color:  Color(0xFF442B2D)), onPressed: () {},)
              ],
            ),
            body: ListView(
              // padding: EdgeInsets.all(8),
              children: SHOPS.map((shop) {return ShopCard(shop);}).toList(),
            ),
          ),
        Container(
          height: MediaQuery.of(context).padding.top,
          color: Color(0xFFff4081),
        )
      ],
    );
  }
}