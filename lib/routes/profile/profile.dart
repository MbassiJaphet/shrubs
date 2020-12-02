import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'package:shrubs/models/models.dart';
import 'package:shrubs/routes/routes.dart';
import 'package:shrubs/widgets/widgets.dart';

class ProfilePage extends StatefulWidget {

  final String title = 'Profile';
  static final String route = '/profile';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  User user = USER;

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
        children: <Widget>[
          ExpansionTile(
            initiallyExpanded: true,
            title: Text('Profile', style: TextStyle(fontWeight: FontWeight.w600)),
            leading: Icon(Icons.person),
            children: <Widget>[
          SizedBox(height: 15.0,),
          new Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListTile(
              leading: Icon(Icons.person,),
              title: Text("${user.name}", style: TextStyle(fontSize: 15.0)),
              subtitle: Text('Name'),
              trailing: IconButton(icon: Icon(Icons.edit, color: Color(0xFF560027).withOpacity(0.8),),
                  onPressed: (){
                    new Alert(
                        context: context,
                        title: "Name Change",
                        content: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.account_circle),
                                labelText: 'Name',
                              ),
                            ),
                          ],
                        ),
                        buttons: [
                          DialogButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "Update",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ]).show();
                  }),

            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListTile(
              leading: Icon(Icons.phone_iphone,),
              title: Text("${user.phone}", style: TextStyle(fontSize: 15.0)),
              subtitle: Text('Phone number'),
              trailing: IconButton(icon: Icon(Icons.edit, color: Color(0xFF560027).withOpacity(0.8),),
                  onPressed: (){
                    new Alert(
                        context: context,
                        title: "New mobile number",
                        content: Column(
                          children: <Widget>[
                            TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                icon: Icon(Icons.phone_iphone),
                                labelText: 'mobile number',
                              ),
                            ),
                          ],
                        ),
                        buttons: [
                          DialogButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "Update",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ]).show();

                  }),
            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListTile(
              leading: Icon(Icons.mail,),
              title: Text("${user.mail}", style: TextStyle(fontSize: 15.0)),
              subtitle: Text('Mail Address'),
              trailing: IconButton(icon: Icon(Icons.edit, color: Color(0xFF560027).withOpacity(0.8),),
                  onPressed: (){
                    new Alert(
                        context: context,
                        title: "New email address",
                        content: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.mail),
                                labelText: 'email',
                              ),
                            ),
                          ],
                        ),
                        buttons: [
                          DialogButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "Update",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ]).show();
                  }),

            ),
          ),

          new Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListTile(
              leading: Icon(Icons.place,),
              title: Text("${user.address}", style: TextStyle(fontSize: 15.0)),
              subtitle: Text('Town of residence'),
              trailing: IconButton(icon: Icon(Icons.edit, color: Color(0xFF560027).withOpacity(0.8),),
                  onPressed: (){
                    new Alert(
                        context: context,
                        title: "New Town",
                        content: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.place),
                                labelText: 'Town of Residence',
                              ),
                            ),
                          ],
                        ),
                        buttons: [
                          DialogButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "Update",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ]).show();
                  }),

            ),
          ),
          new Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: ListTile(
              leading: Icon(Icons.lock,),
              title: Text('******', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
              subtitle: Text('Password'),
              trailing: IconButton(icon: Icon(Icons.edit, color: Color(0xFF560027).withOpacity(0.8),),
                  onPressed: (){
                    new Alert(
                        context: context,
                        title: "New Password",
                        content: Column(
                          children: <Widget>[
                            TextField(
                              obscureText: true,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                labelText: 'password',

                              ),
                            ),
                          ],
                        ),
                        buttons: [
                          DialogButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              "Update",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ]).show();
                  }),

            ),
          ),
          
            ],
          ),
          Divider(),
          ListTile(
            onTap: () {Navigator.of(context).pushNamed(OrdersPage.route);},
            title: Text('Orders', style: TextStyle(fontWeight: FontWeight.w600)),
            leading: Icon(Icons.work)
          ),
          Divider(),
          ListTile(
            title: Text('Favorites', style: TextStyle(fontWeight: FontWeight.w600)),
            leading: Icon(Icons.favorite)
          ),
          Divider(),
          ListTile(
            title: Text('Recently viewed', style: TextStyle(fontWeight: FontWeight.w600)),
            leading: Icon(Icons.history)
          ),
          Divider(),
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