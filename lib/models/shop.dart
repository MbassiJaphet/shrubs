import 'package:shrubs/models/models.dart';

class Shop{

  final String name;
  final String picture;
  final String logo;
  final List<Product> products;
  final int subscribbers;

  Shop({this.name, this.logo, this.picture, this.products, this.subscribbers});
}

var SHOPS = [
  Shop(
    name: 'Carrefour Market',
    picture: 'assets/shops/carrefour.jpg',
    logo: 'assets/shops/carrefour_logo.png',
    subscribbers: 28583,
    products: <Product>[
      PRODUCTS[0],
      PRODUCTS[1],
      PRODUCTS[2],
      PRODUCTS[3],
    ]
  ),
  Shop(
    name: 'Batirama Construction',
    picture: 'assets/shops/batirama.jpg',
    logo: 'assets/shops/batirama_logo.jpg',
    subscribbers: 1247,
    products: <Product>[
      PRODUCTS[0],
      PRODUCTS[1],
      PRODUCTS[2],
      PRODUCTS[3],
    ]
  ),
  Shop(
    name: 'Evaka Fashion',
    picture: 'assets/shops/evaka.jpg',
    logo: 'assets/shops/evaka_logo.png',
    subscribbers: 13609,
    products: <Product>[
      PRODUCTS[0],
      PRODUCTS[1],
      PRODUCTS[2],
      PRODUCTS[3],
    ]
  ),
];