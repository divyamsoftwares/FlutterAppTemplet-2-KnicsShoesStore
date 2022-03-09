import 'package:flutter/material.dart';
import 'package:knicsshoesstore/Shopping.dart';
import 'package:knicsshoesstore/Shopping_Cart.dart';
import 'package:knicsshoesstore/Submit_Order.dart';
import 'package:knicsshoesstore/Walk_Through.dart';
import 'package:knicsshoesstore/loginscreen.dart';
import 'package:knicsshoesstore/payment.dart';
import 'package:knicsshoesstore/product_detail.dart';

import 'Delivery.dart';
import 'categories.dart';
import 'package:knicsshoesstore/loginscreen.dart';

import 'drawer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Knics- Shoes Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        ShoppingScren.routeName: (ctx) => ShoppingScren(),
        ShoppingCartScreen.routeName: (ctx) => ShoppingCartScreen(),
        DeliveryScreen.routeName: (ctx) => DeliveryScreen(),
        SubmitOrderScreen.routeName: (ctx) => SubmitOrderScreen(),
        Categories.routeName:(ctx)=>Categories(),

        Payment.routeName:(ctx)=>Payment(),
        ProductDetail.routeName:(ctx)=>ProductDetail(),
        LoginScreen.routeName:(ctx)=>LoginScreen(),
        MyDrawer.routeName:(ctx)=>MyDrawer(),
      },
      home: WalkThroughScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
