import 'package:flutter/material.dart';

import 'package:shrubs/models/models.dart';
import 'package:shrubs/routes/routes.dart';

class ProductCard extends StatefulWidget {

  final Product product;
  ProductCard(this.product);
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context){
    return Container(
          margin: EdgeInsets.fromLTRB(4, 8, 4, 8),
      color: Colors.white,
      child: InkWell(
        onTap: () {Navigator.pushNamed(context, DescriptionPage.route, arguments: this.widget.product);},
        child: Container(
          child: Stack(
            alignment: Alignment.topRight,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 11/13,
                child: Column(
                  children: [
                    Container(
                      height: 125,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(this.widget.product.picture),
                          fit: BoxFit.fill
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        // color: Color(0xFFE0E0E0).withOpacity(0.5),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('${this.widget.product.name}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                    SizedBox(height: 4),
                    Text('${this.widget.product.price} FCFA', style: TextStyle(color: Color(0xFF616161), fontFamily: 'Roboto', fontSize: 12),)
                  ]
                ),
              ),
              IconButton(icon: Icon(Icons.favorite_border, color: Colors.white), onPressed: () {})
            ],
          ),
        )
      ),
    );
  }
}