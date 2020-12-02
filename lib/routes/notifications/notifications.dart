import 'package:flutter/material.dart';

import 'package:shrubs/routes/notifications/widgets/notifications_helpers.dart';

class NotificationsPage extends StatefulWidget {

  final String title = 'Notifications';
  static final String route = '/notifications';
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Theme(
          data: ThemeData(
            primarySwatch: Colors.orange,
            fontFamily: 'Raleway',
            appBarTheme: AppBarTheme(
              color: Colors.white,
              elevation: 1,
            )
          ),
          child: Scaffold(
            backgroundColor: Color(0xFFf5f5f5),
            appBar: AppBar(
              centerTitle: true,
              title: Text(widget.title, style: TextStyle(color: Color(0xFFff6f00), fontSize: 26, fontWeight: FontWeight.bold)),
              leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Color(0xFFff6f00)), onPressed: (){Navigator.pop(context);}),
            ),
            body: ListView(
              padding: EdgeInsets.all(8),
              children: <Widget>[NoNotificationsPlaceHolder()],
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).padding.top,
          color: Color(0xFFff6f00),
        )
      ],
    );
  }
}