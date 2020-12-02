import 'package:flutter/material.dart';

import 'package:shrubs/models/models.dart';
import 'package:shrubs/routes/orders/details/widgets/order_details_card.dart';
import 'package:shrubs/routes/orders/details/widgets/shipping_infos_card.dart';
import 'package:shrubs/widgets/widgets.dart';

class OrderDetailsPage extends StatefulWidget {

  final String title = 'Order Details';
  static final String route = '/orders/details';
  @override
  _OrderDetailsPageState createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Order order = ModalRoute.of(context).settings.arguments;
    List<Widget> elements = <Widget>[];
    elements.add(ShippingInfosCard(order));
    order.details.forEach((detail) {elements.add(OrderDetailCard(detail));});
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text('${this.widget.title}', style: TextStyle(color: Color(0xFF442B2D), fontSize: 26, fontWeight: FontWeight.bold)),
          ),
          body: ListView(
            children: elements,
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