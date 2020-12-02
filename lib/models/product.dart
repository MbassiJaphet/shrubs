import 'package:flutter/material.dart';

import 'package:shrubs/models/product_category.dart';

class Product{
  final int id;
  final String name;
  final ProductCategory category;
  final double price;
  final double quantity;
  final String picture;
  final String publicationDate;
  final String description;
  String previewURL = 'https://www.facebook.com';

  Product({@required this.id, @required this.name, @required this.category, @required this.price, this.previewURL, this.quantity, this.picture, this.publicationDate, this.description});
}

var PRODUCTS = [
  Product(
    id: 1,
    name: 'White box',
    category: ProductCategory(id: 0, name: 'Food', description: ''),
    price: 1499,
    quantity: 53,
    publicationDate: '2019-07-02',
    picture: 'assets/glasses.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    previewURL: 'https://www.facebook.com/fbcameraeffects/testit/1341803365984771/YWQ4NDQ2YzE4NjBhM2RlZDVmMzEwZDE0MGRiMDM0Y2U=/'
  ),
  Product(
    id: 2,
    name: 'Flower plant',
    category: ProductCategory(id: 0, name: 'Food', description: ''),
    price: 599,
    quantity: 200,
    publicationDate: '2019-07-02',
    picture: 'assets/flowers.jpg',
    description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    previewURL: 'https://www.facebook.com/fbcameraeffects/testit/475699406589339/M2Q2ZTMxMjYzNjkwYTcwNzlhNjQyZGE1ZjkxNTk5MjM=/'
  ),
  Product(
    id: 3,
    name: 'Beauty Mask',
    publicationDate: '2019-07-02',
    category: ProductCategory(id:3, name: 'Food', description: ''),
    price: 2849,
    quantity: 4,
    picture: 'assets/mask.jpg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
    previewURL: 'https://www.facebook.com/fbcameraeffects/testit/511728676264845/NjBhNGI0N2RhMTZiZDEzZDhkMWU0MjljMmNiOWVjOWE=/'
  ),
  Product(
    id: 4,
    name: 'Potatoes Crackers',
    publicationDate: '2019-07-02',
    category: ProductCategory(id: 4, name: 'Food', description: ''),
    price: 999,
    quantity: 300,
    picture: 'assets/4_popular.jpg',
    description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  ),
];