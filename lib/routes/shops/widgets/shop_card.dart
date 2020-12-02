import 'package:flutter/material.dart';

import 'package:shrubs/models/models.dart';
import 'package:shrubs/routes/routes.dart';

class ShopCard extends StatefulWidget {

  final Shop shop;
  ShopCard(this.shop);
  @override
  _ShopCardState createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.pushNamed(context, ProductsPage.route, arguments: this.widget.shop);},
      child: Container(
        height: 208,
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            Column(
              children: [
                // Hero(tag: this.widget.shop.name ,child: Image.asset('${this.widget.shop.picture}')),
                Container(
                  height: 150,
                   width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(this.widget.shop.picture),
                      fit: BoxFit.fill
                    )
                  )
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage(this.widget.shop.logo), fit: BoxFit.fill,)
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 2),
                        Text('${this.widget.shop.name}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                        SizedBox(height: 4),
                        Text('${this.widget.shop.subscribbers} Subscribbers', style: TextStyle(color: Color(0xFF757575), fontFamily: 'Roboto', fontSize: 12),)
                      ]
                    )
                  ],
                )
              ]
            ),
            IconButton(icon: Icon(Icons.favorite_border, color: Colors.white), onPressed: () {})
          ],
        ),
      )
    );
  }
}