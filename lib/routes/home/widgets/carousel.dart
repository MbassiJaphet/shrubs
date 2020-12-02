import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class AppCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      child: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage('assets/carousel1.jpg'),
            AssetImage('assets/carousel2.png'),
            AssetImage('assets/carousel6.jpg'),
            AssetImage('assets/carousel3.jpg'),
            AssetImage('assets/carousel5.jpg'),
          ],
          autoplay: true,
          animationCurve: Curves.fastOutSlowIn,
          animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 4.0,),
    );
  }
}

Widget topShops(){
  return Container(
    height: 296,
    color: Color(0xFFf5f5f5),
    child: Column(
      children: <Widget>[
            Container(
              margin: EdgeInsets.all(4),
              color: Color(0xFF003300),
              height: 46,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text('Top Shops', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
        Row(
          // reverse: true,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(3),
              height: 115,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/shops/carrefour_logo.png'),
                  fit: BoxFit.fill,
                )
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              height: 115,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/shops/batirama_logo.jpg'),
                  fit: BoxFit.fill,
                )
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              height: 115,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/shops/evaka_logo.png'),
                  fit: BoxFit.fill,
                )
              ),
            ),
          ],
        ),
        Row(
          // reverse: true,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(3),
              height: 115,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/shops/orca_logo.png'),
                  fit: BoxFit.fill,
                )
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              height: 115,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/shops/ford_logo.jpg'),
                  fit: BoxFit.fill,
                )
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              height: 115,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/shops/citysport_logo.jpg'),
                  fit: BoxFit.fill,
                )
              ),
            ),
          ],
        )
      ],
    ),
  );
}

Widget topSales(){
  return Container(
    height: 180,
    color: Color(0xFFf5f5f5),
    child: Column(
      children: <Widget>[
            Container(
              margin: EdgeInsets.all(4),
              color: Color(0xFFff80ab),
              height: 46,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Text('Top Sales', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
        Row(
          // reverse: true,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(3),
              height: 115,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/shops/shoe.jpg'),
                  fit: BoxFit.fill,
                )
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              height: 115,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/shops/tv.jpg'),
                  fit: BoxFit.fill,
                )
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              height: 115,
              width: 108,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.center,
                  image: AssetImage('assets/shops/table.jpg'),
                  fit: BoxFit.fill,
                )
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget imageCarousel = new Container(
      height: 150.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/carousel1.jpg'),
          AssetImage('assets/carousel2.jpg'),
          AssetImage('assets/carousel6.jpg'),
          AssetImage('assets/carousel3.jpg'),
          AssetImage('assets/carousel5.jpg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 4.0,
      ),
    );
