import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knicsshoesstore/Shopping.dart';
import 'package:knicsshoesstore/Shopping_Cart.dart';
import 'package:knicsshoesstore/drawer.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key}) : super(key: key);

  @override
  _AppBarScreenState createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28, left: 20),
      child: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xff000000)),
        backgroundColor: Color(0xffFFFFFF),
        centerTitle: true,
        title: Text(
          'Shopping',
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
                        Navigator.of(context)
                            .pushNamed(ShoppingCartScreen.routeName);
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
    );
  }
}
