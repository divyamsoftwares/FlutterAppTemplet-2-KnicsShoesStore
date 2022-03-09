

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knicsshoesstore/Shopping_Cart.dart';
import 'package:knicsshoesstore/drawer.dart';

class Categories extends StatefulWidget {
  static String routeName = 'category';

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> text = [
    "Running\nShoes",
    "Basketball\nShoes",
    "Football\nShoes",
    "Training\nShoes",
    "Casual\nShoes",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 28, left: 20),
          child: AppBar(
            elevation: 0,
            iconTheme: IconThemeData(color: Color(0xff000000)),
            backgroundColor: Color(0xffFFFFFF),
            centerTitle: true,
            title: Text(
              'Categories',
              style: GoogleFonts.oswald(
                  fontStyle: FontStyle.normal,
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: ImageIcon(
                          AssetImage('assets/images/Icon_filter_outline.png'),
                          color: Color(0xff000000),
                        )),
                    Stack(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed(ShoppingCartScreen.routeName);
                          },
                          icon: ImageIcon(
                            AssetImage('assets/images/Path 81.png'),
                            color: Color(0xff000000),
                          ),
                        ),
                        Positioned(
                            top: 9.0,
                            right: 11,
                            child: CircleAvatar(
                              radius: 3.5,
                              backgroundColor: Color(0xff2A74EB),
                            )),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      drawer: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 300), child: MyDrawer()),
      body: Column(
        children: [

          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: text.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 37, right: 37, top: 20),
                  child: Container(
                    height: 120,
                    width: 302,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 45, left: 33),
                      child: Text(
                        text[index],
                        style: GoogleFonts.oswald(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
