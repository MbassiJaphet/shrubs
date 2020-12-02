import 'package:flutter/material.dart';
import 'package:shrubs/routes/home/widgets/carousel.dart';

import 'package:shrubs/routes/notifications/widgets/notifications_helpers.dart';
import 'package:shrubs/models/models.dart';
import 'package:shrubs/routes/routes.dart';

class HomePage extends StatefulWidget {

  final String title = 'Home';
  static final String route = '/Home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Color(0xFFf5f5f5),
          appBar: AppBar(
            title: Text(widget.title, style: TextStyle(color: Color(0xFF442B2D), fontSize: 26, fontWeight: FontWeight.bold)),
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(icon: Icon(Icons.shopping_cart, color:  Color(0xFF442B2D)), onPressed: () {},)
            ],
          ),
          body: ListView(
            padding: EdgeInsets.all(8),
            children: <Widget>[
              AppCarousel(),
              topShops(),
              topSales(),
            ],
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