import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:shrubs/app.dart';
import 'package:shrubs/models/product.dart';

class DescriptionPage extends StatefulWidget {

  final Product product;
  final Key key;
  static final String route = '/descrption';

  DescriptionPage({this.key, this.product}) : super(key: key);

  @override
  _DescriptionPageState createState() => _DescriptionPageState();

}

class _DescriptionPageState extends State<DescriptionPage> {

 _DescriptionPageState();

  int dropdownValue = 1;
  Widget favoriteIcon;
  @override

  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments;
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: Text(product.name,  style: TextStyle(color: Color(0xFF442B2D), fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: ListView(
              children: <Widget>[
                Container(
                  height: 180.0,
                  child: GridTile(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(
                              product.picture
                            ),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                  ),

                ),

                // ======= first button ========

                Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                      child: Row(
                      children: <Widget>[

                        // ======= size button =======

                        Expanded(child: Container(
                          child: Text("Choose quantity within available:", style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600)),
                            )),
                        
                        Padding(
                         padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                         child: DropdownButton<int>(
                           elevation: 0,
                           iconEnabledColor: Color(0xFFff6f00),
                           iconDisabledColor: Color(0xFFff6f00),
                          value: dropdownValue,
                          onChanged: (int newValue) {
                             setState(() {
                                 dropdownValue = newValue;
                                });
                           },
                           items: <int>[1, 2, 3, 4, 5]
                           .map<DropdownMenuItem<int>>((int value) {
                            return DropdownMenuItem<int>(
                            value: value,
                            child: Padding(
                              padding: const EdgeInsets.only(left:10.0, right: 10.0),
                              child: Text("$value", style: TextStyle(color: Color(0xFFff6f00), fontWeight: FontWeight.bold),),
                            )
                      );
                      })
                      .toList(),
                      ),
                       ),
                      ],
                  ),
                    ),
                ),

                // =========== Second button ============

                Row(
                  children: <Widget>[

                    // ======= size button =======

                    Expanded(
                        child: MaterialButton(
                            onPressed: (){},
                            color: Color(0xFF12005e),
                            textColor: Colors.white,
                            elevation: 0.2,
                        child: Text("Add to chart")
                    )
                    ),
                    SizedBox(width: 16,),
                    RaisedButton(
                            onPressed: (){_launchURL(product.previewURL);},
                            color: Colors.blue,
                            textColor: Colors.white,
                            elevation: 0.2,
                        child: Row(children: [Icon(Icons.visibility, size: 18),SizedBox(width: 2), Text("Preview", style: TextStyle(fontFamily: 'Roboto'),)])
                    ),
                   

  
                  
                  ],
                ),

                Divider(color: Colors.deepOrange),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text("Description", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                  subtitle: Text(product.description, style: TextStyle(fontFamily: 'Roboto')),

                ),

                Divider(),

                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                      child: Text("Product name:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(product.name, style: TextStyle(fontFamily: 'Roboto')),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                      child: Text("Product price:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text('${product.price} FCFA', style: TextStyle(fontFamily: 'Roboto')),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                        child: Text("Posted on:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text(product.publicationDate, style: TextStyle(fontFamily: 'Roboto')),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                          child: Text("Category:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600))
                      ),
                      Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(product.category.name, style: TextStyle(fontFamily: 'Roboto')),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),

        ),
        Container(
          height: MediaQuery.of(context).padding.top,
          color: Color(0xFF442B2D).withOpacity(0.8),
        )
      ],
    );
  }

  void _launchURL(String url) async{
    if(await canLaunch(url)){
      await(launch(url));
    } else{
      // throw 'Could not lauch url';
    }
  }
}
