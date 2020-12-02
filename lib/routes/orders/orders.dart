import 'package:flutter/material.dart';
import 'package:shrubs/routes/orders/widgets.dart/order_tile.dart';

import 'package:shrubs/widgets/widgets.dart';
import 'package:shrubs/models/models.dart';


class OrdersPage extends StatefulWidget {

  final String title = 'Orders';
  static final String route = '/orders';

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(widget.title, style: TextStyle(color: Color(0xFF442B2D), fontSize: 26, fontWeight: FontWeight.bold)),
          ),
          body: ListView(
            children: ORDERS.map((order) {return OrderTile(order);}).toList(),
          ),
        ),
        Container(
          height: MediaQuery.of(context).padding.top,
          color: Color(0xFF442B2D).withOpacity(0.5),
        )
      ],
    );
  }
}