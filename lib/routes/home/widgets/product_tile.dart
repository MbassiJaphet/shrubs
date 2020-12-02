import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:shrubs/app.dart';
import 'package:shrubs/routes/routes.dart';
import 'package:shrubs/models/product.dart';


class ProductTile extends StatefulWidget {
  final Product product;
  final Key key;

  ProductTile({this.key, this.product}) : super(key: key);

  @override
  _ProductTileState createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  Widget favoriteIcon;

  _ProductTileState();

  @override
  void initState() {
    super.initState();
    favoriteIcon =  Icon(Icons.favorite_border, color: Color(0xFF616161));
  }

  @override
  Widget build(BuildContext context) {
    initFavoriteIcon(context);
    return InkWell(
      onTap: () {Navigator.pushNamed(context, DescriptionPage.route, arguments: widget.product);},
      child: Card(
        elevation: 0,
        color: Colors.white70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 108,
              height: 108,
              decoration: BoxDecoration(
                color: Color(0xFFeeeeee),
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: Image.asset(this.widget.product.picture),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.widget.product.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                      RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '${this.widget.product.price}',
                              style: TextStyle(color: Color(0xFFff6f00)),
                            ),
                            TextSpan(
                              text: ' FCFA',
                              style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    SizedBox(height:12),
                    Text(this.widget.product.category.name),
                    Text('Molyko, Buea', style: TextStyle(color: Color(0xFF757575))),
                    Text('28-07-2079', style: TextStyle(fontWeight: FontWeight.w300, fontFamily: 'Roboto'))
                  ],
                ),
              ),
              Spacer(),
              (ShrubsAppSession.of(context).userLoggedIn) ? IconButton(icon: favoriteIcon, onPressed: () {manageFavorite(context);}) : SizedBox(),
          ],
        ),
      ),
    );
  }

  void manageFavorite(BuildContext context){
    if(ShrubsAppSession.of(context).userLoggedIn){
      if( ! ShrubsAppSession.of(context).user.favorites.map((product) {return product.id;}).toList().contains(widget.product.id)){
        setState(() {
        ShrubsAppSession.of(context).user.favorites.add(widget.product);
        favoriteIcon =  Icon(Icons.favorite, color: Colors.red);
        });
      }else{
        setState(() {
        ShrubsAppSession.of(context).user.favorites.remove(widget.product);
        favoriteIcon =  Icon(Icons.favorite_border, color: Color(0xFF616161));
        });
      }
    }
  }

  Future initFavoriteIcon(BuildContext context) async{
    if(ShrubsAppSession.of(context).user.favorites.map((product) {return product.id;}).toList().contains(widget.product.id)){
      favoriteIcon =  Icon(Icons.favorite, color: Colors.red);
    }else{
      favoriteIcon =  Icon(Icons.favorite_border, color: Color(0xFF616161));
    }
  }
}