import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

import 'package:shrubs/app.dart';
import 'package:shrubs/models/product.dart';
import 'package:shrubs/widgets/drawer.dart';
import 'package:shrubs/routes/home/widgets/product_tile.dart';
import 'package:shrubs/routes/home/widgets/products_listview_header.dart';
import 'package:shrubs/routes/home/widgets/section_view.dart';

class IndexPage extends StatefulWidget {
  IndexPage({Key key}) : super(key: key);

  final String title = 'Index';
  static final String route = '/index';

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> with RouteAware {

  List<Widget> PRODCUCTS_TILES;
  SectionPageView sectionPageView;

  @override
  void initState() {
    super.initState();
    this.sectionPageView = SectionPageView();
    this.PRODCUCTS_TILES = getProductsTiles();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context));
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }
  @override
  void didPopNext() {
    setState(() {
      this.PRODCUCTS_TILES = getProductsTiles();
    });
  }

  @override
  void didPop() {
    setState(() {
      this.PRODCUCTS_TILES = getProductsTiles();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          body: sectionPageView,
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {selectedIndex.value = index.toDouble() * MediaQuery.of(context).size.width;},
            items: [
              BottomNavigationBarItem(
                icon: Icon(OMIcons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(OMIcons.localConvenienceStore),
                title: Text('Shops')
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                title: Text('Profile')
              ),
            ],
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

List<Widget> getProductsTiles() {
  List<Widget> widgets = [ProductsListViewHeader()];
  for(int i = 0; i <= 2; i++){
    widgets.addAll(PRODUCTS.map((product) {
      return ProductTile(key: UniqueKey(), product: product);
    }).toList());
  }
  return widgets;
}
