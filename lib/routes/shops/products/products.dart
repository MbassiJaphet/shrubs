import 'package:flutter/material.dart';

import 'package:shrubs/routes/routes.dart';
import 'package:shrubs/models/models.dart';
import 'package:shrubs/routes/shops/products/widgets.dart/product_card.dart';
import 'package:shrubs/routes/shops/products/widgets.dart/shop_header.dart';

class ProductsPage extends StatefulWidget {

  static final String route = 'shop/products';
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    final Shop shop = ModalRoute.of(context).settings.arguments;
    final String title = shop.name;
    return Stack(
      children: <Widget>[
        Scaffold(
          body: _body(shop),
          backgroundColor: Color(0xFFf5f5f5),
        ),
        Container(
          height: MediaQuery.of(context).padding.top,
          color: Color(0xFF442B2D).withOpacity(0.5),
        )
      ],
    );
  }

  Widget _body(Shop shop){
    final String title = shop.name;
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          snap: true,
          elevation: 1,
          floating: true,
          backgroundColor: Colors.white,
          primary: true,
              title: Text(title, style: TextStyle(color: Color(0xFF442B2D), fontSize: 20, fontWeight: FontWeight.bold)),
          bottom: PreferredSize(child: ShopHeader(shop), preferredSize: Size(-1, 150),),
              actions: <Widget>[
                IconButton(icon: Icon(Icons.shopping_cart, color:  Color(0xFF442B2D)), onPressed: () {},)
              ],
        ),
        _productsCards(shop)
      ],
    );
  }

  SliverGrid _productsCards(Shop shop){
    return SliverGrid.count(
      crossAxisCount: 2,
      childAspectRatio: 8.0 / 9.0,
      children: shop.products.map((product) {return ProductCard(product);}).toList(),
    );
  }
}