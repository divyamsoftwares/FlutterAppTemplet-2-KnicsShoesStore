import 'package:flutter/material.dart';
import 'package:knicsshoesstore/Shopping.dart';
import 'package:knicsshoesstore/Shopping_Cart.dart';
import 'package:knicsshoesstore/Submit_Order.dart';
import 'package:knicsshoesstore/Walk_Through.dart';
import 'package:knicsshoesstore/loginscreen.dart';
import 'package:knicsshoesstore/payment.dart';
import 'package:knicsshoesstore/product_detail.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

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

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final drawersController = ZoomDrawerController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: ZoomDrawer(
//         controller: drawersController,
//         style: DrawerStyle.Style1,
//         menuScreen: MenuScreen(),
//         mainScreen: ShoppingScren(drawersController),
//         borderRadius: 30.8,
//         angle: 0.0,
//         backgroundColor: Colors.grey.shade300,
//         openCurve: Curves.bounceIn,
//
//       ),
//     );
//   }
// }
//
//
