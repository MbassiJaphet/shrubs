import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shrubs/routes/favorites/favorite_products.dart';
import 'package:shrubs/routes/home/home.dart';
import 'package:shrubs/routes/home/widgets/section_view.dart';
import 'package:shrubs/routes/routes.dart';

var sections = <Section>[
  Section(
    title: 'BASICS',
    icon: Icon(Icons.open_in_new,size: 20),
    content: SizedBox(
      // width: -1,
      child: HomePage(),
    ),
    onSelected: () {print('Basics\n');}
  ),
  Section(
    title: 'BASICS',
    icon: Icon(Icons.open_in_new,size: 20),
    content: SizedBox(
      // width: -1,
      child: ShopsPage(),
    ),
    onSelected: () {print('Basics\n');}
  ),
  Section(
    title: 'BASICS',
    icon: Icon(Icons.open_in_new,size: 20),
    content: SizedBox(
      // width: -1,
      child: ProfilePage(),
    ),
    onSelected: () {print('Basics\n');}
  ),
  Section(
    title: 'BASICS',
    icon: Icon(Icons.open_in_new,size: 20),
    content: SizedBox(
      // width: -1,
      child: SupportPage(),
    ),
    onSelected: () {print('Basics\n');}
  ),
];