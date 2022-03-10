import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knicsshoesstore/product_detail.dart';

import 'categories.dart';

class MyDrawer extends StatefulWidget {
  static String routeName = '/drawer';

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff4DBFF5),
                Color(0xff2B75EC),
              ]),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      IconButton(
                        alignment: Alignment.topRight,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close),
                        color: Colors.white,
                        iconSize: 30,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18, left: 45),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xffF2F2F2),
                      ),
                    ),
                   SizedBox(width: 15),
                   Padding(
                     padding: const EdgeInsets.only(top: 18),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text('Mike Joe',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 24,color: Color(0xffFFFFFF)),),
                         Text('California',style: GoogleFonts.openSans(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffF2F2F2)),),
                       ],
                     ),
                   ),

                  ],
                ),
                SizedBox(height: 70),
                Divider(
                  thickness: 1.2,
                  color: Color(0xffFFFFFF),
                  indent: 48,
                  endIndent: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35,top: 20),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: (){

                          Navigator.of(context).pushNamed(ProductDetail.routeName);
                        },
                        child: ListTile(
                          title: Text('Shop',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                        ),
                      ),
                      InkWell(


                        onTap: (){

                          Navigator.of(context).pushNamed(Categories.routeName);
                        },
                        child: ListTile(
                          title: Text('Categories',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                        ),
                      ),
                      ListTile(
                        title: Text('My Cart',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                      ),
                      ListTile(
                        title: Text('Wishlist',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                      ),
                      ListTile(
                        title: Text('Track Order',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                      ),
                      ListTile(
                        title: Text('Support',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                      ),
                      ListTile(
                        title: Text('FAQ',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Divider(
                  thickness: 1.2,
                  color: Color(0xffFFFFFF),
                  indent: 48,
                  endIndent: 60,
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 35,top: 20),
                  child: ListTile(
                    title: Text('Logout',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:knicsshoesstore/categories.dart';
// import 'package:knicsshoesstore/product_detail.dart';
//
// class MenuScreen extends StatelessWidget {
//   const MenuScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff464dfe),
//       body: SafeArea(
//         child: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 begin: Alignment.topRight,
//                 end: Alignment.bottomLeft,
//                 colors: [
//                   Color(0xff4DBFF5),
//                   Color(0xff2B75EC),
//                 ]),
//           ),
//           child: ListView(
//             children: [
//               Column(
//                 children: [
//                   Column(children: [
//                     Padding(
//                       padding: const EdgeInsets.all(18.0),
//                       child: Row(
//                         children: [
//                           IconButton(
//                             alignment: Alignment.topRight,
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             icon: Icon(Icons.close),
//                             color: Colors.white,
//                             iconSize: 30,
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(top: 18, left: 45),
//                           child: CircleAvatar(
//                             radius: 30,
//                             backgroundColor: Color(0xffF2F2F2),
//                           ),
//                         ),
//                         SizedBox(width: 15),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 18),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text('Mike Joe',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 24,color: Color(0xffFFFFFF)),),
//                               Text('California',style: GoogleFonts.openSans(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xffF2F2F2)),),
//                             ],
//                           ),
//                         ),
//
//                       ],
//                     ),
//                     SizedBox(height: 70),
//                     Divider(
//                       thickness: 1.2,
//                       color: Color(0xffFFFFFF),
//                       indent: 48,
//                       endIndent: 60,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 35,top: 20),
//                       child: Column(
//                         children: [
//                           InkWell(
//                             onTap: (){
//
//                                Navigator.of(context).pushNamed(ProductDetail.routeName);
//                             },
//                             child: ListTile(
//                               title: Text('Shop',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
//                             ),
//                           ),
//                           InkWell(
//
//
//                             onTap: (){
//
//                               Navigator.of(context).pushNamed(Categories.routeName);
//                             },
//                             child: ListTile(
//                               title: Text('Categories',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
//                             ),
//                           ),
//                           ListTile(
//                             title: Text('My Cart',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
//                           ),
//                           ListTile(
//                             title: Text('Wishlist',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
//                           ),
//                           ListTile(
//                             title: Text('Track Order',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
//                           ),
//                           ListTile(
//                             title: Text('Support',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
//                           ),
//                           ListTile(
//                             title: Text('FAQ',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(height: 70),
//                     Divider(
//                       thickness: 1.2,
//                       color: Color(0xffFFFFFF),
//                       indent: 48,
//                       endIndent: 60,
//                     ),
//                     SizedBox(height: 30),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 35,top: 20),
//                       child: ListTile(
//                         title: Text('Logout',style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontSize: 24,fontWeight: FontWeight.w400,color: Color(0xffFFFFFF)),),
//                       ),
//                     ),
//                   ],)
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
