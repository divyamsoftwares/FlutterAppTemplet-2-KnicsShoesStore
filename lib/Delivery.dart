import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knicsshoesstore/Shopping_Cart.dart';
import 'package:knicsshoesstore/Submit_Order.dart';
import 'package:knicsshoesstore/drawer.dart';
import 'package:knicsshoesstore/payment.dart';

class DeliveryScreen extends StatefulWidget {
  static String routeName = 'delivery';

  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  final emailController = TextEditingController();
  bool parentAttention = false;
  bool attention = true;
  bool payment = false;
  bool order = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
              'Delivery',
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
                          onPressed: () {},
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 80, top: 20),
          child: Container(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'My Cart',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                            onTap: () {
                              setState(() {
                                parentAttention = !parentAttention;
                              });
                              Navigator.of(context).pushNamed(ShoppingCartScreen.routeName);
                            },
                            child: CircleAvatar(
                              backgroundColor: parentAttention
                                  ? Color(0xff2A74EB)
                                  : Color(0xffacd6fe),
                              radius: 27,
                              child: Image(
                                  image:
                                      AssetImage('assets/images/Path 81.png'),
                                  color: parentAttention
                                      ? Color(0xffFFFFFF)
                                      : Color(0xff2A74EB)),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Delivery',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(height: 10),
                        InkWell(

                            onTap: () {

                              setState(() {
                                attention = !attention;
                              });

                            },
                            child: CircleAvatar(
                              backgroundColor: attention
                                  ? Color(0xff2A74EB)
                                  : Color(0xffacd6fe),
                              radius: 27,
                              child: Image(
                                  image: AssetImage('assets/images/pin.png'),
                                  color: attention
                                      ? Color(0xffFFFFFF)
                                      : Color(0xff2A74EB)),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Payment',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(Payment.routeName);
                              setState(() {
                                payment = !payment;
                              });
                            },
                            child: CircleAvatar(
                              backgroundColor: payment
                                  ? Color(0xff2A74EB)
                                  : Color(0xffacd6fe),
                              radius: 27,
                              child: Image(
                                  image: AssetImage('assets/images/g3456.png'),
                                  color: payment
                                      ? Color(0xffFFFFFF)
                                      : Color(0xff2A74EB)),
                            )),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Order',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff000000)),
                        ),
                        SizedBox(height: 10),
                        InkWell(
                            onTap: () {
                              setState(() {
                                order = !order;
                              });
                              Navigator.of(context).pushNamed(SubmitOrderScreen.routeName);
                            },
                            child: CircleAvatar(
                              backgroundColor:
                                  order ? Color(0xff2A74EB) : Color(0xffacd6fe),
                              radius: 27,
                              child: Image(
                                  image:
                                      AssetImage('assets/images/Path 89.png'),
                                  color: order
                                      ? Color(0xffFFFFFF)
                                      : Color(0xff2A74EB)),
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 39),
                        child: Text(
                          'Contact',
                          style: GoogleFonts.oswald(
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 39),
                        child: TextFormField(
                          cursorColor: Colors.black,

                          decoration: InputDecoration(
                            border: InputBorder.none,

                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.transparent)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.transparent)
                            ),
                            focusColor: Color(0xffF6F6F6),

                            fillColor: Color(0xffF6F6F6),
                            filled: true,
                            //labelText: 'User Name',
                            hintText: '    Full Name',
                            hintStyle: GoogleFonts.roboto(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff0000000)),
                          ),

                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 39),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            border: InputBorder.none,

                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.transparent)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.transparent)
                            ),
                            focusColor: Color(0xffF6F6F6),

                            fillColor: Color(0xffF6F6F6),
                            filled: true,
                            //labelText: 'User Name',
                            hintText: '    Your email',
                              hintStyle: GoogleFonts.roboto(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff0000000))
                          ),

                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 39),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              border: InputBorder.none,

                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.transparent)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.transparent)
                              ),
                              focusColor: Color(0xffF6F6F6),

                              fillColor: Color(0xffF6F6F6),
                              filled: true,
                              //labelText: 'User Name',
                              hintText: '    Your Phone Number',
                              hintStyle: GoogleFonts.roboto(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff0000000))
                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 45,),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 39),
                        child: Text(
                          'Address',
                          style: GoogleFonts.oswald(
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff000000)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 39),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            border: InputBorder.none,

                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.transparent)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide(color: Colors.transparent)
                            ),
                            focusColor: Color(0xffF6F6F6),

                            fillColor: Color(0xffF6F6F6),
                            filled: true,
                            //labelText: 'User Name',
                            hintText: '    Your Country',
                            hintStyle: GoogleFonts.roboto(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff0000000)),
                          ),

                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 39),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              border: InputBorder.none,

                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.transparent)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.transparent)
                              ),
                              focusColor: Color(0xffF6F6F6),

                              fillColor: Color(0xffF6F6F6),
                              filled: true,
                              //labelText: 'User Name',
                              hintText: '   Street Detail',
                              hintStyle: GoogleFonts.roboto(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff0000000))
                          ),

                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 39),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                              border: InputBorder.none,

                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.transparent)
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: BorderSide(color: Colors.transparent)
                              ),
                              focusColor: Color(0xffF6F6F6),

                              fillColor: Color(0xffF6F6F6),
                              filled: true,
                              //labelText: 'User Name',
                              hintText: '    Post Code',
                              hintStyle: GoogleFonts.roboto(fontStyle: FontStyle.normal,fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff0000000))
                          ),

                        ),
                      ),
                      SizedBox(height: 30),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 70,),
                          child: Container(
                            height: 72.0,

                            child: RaisedButton(
                              onPressed: () {

                              },
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                              padding: EdgeInsets.all(0.0),
                              child: Ink(
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [Color(0xff4EC1F5),Color(0xff2971EB), ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,

                                    ),
                                    borderRadius: BorderRadius.circular(110.0)
                                ),
                                child: Container(
                                  constraints: BoxConstraints(maxWidth: 324.0, minHeight: 50.0),
                                  alignment: Alignment.center,
                                  child: Text(
                                      "NEXT STEP",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white)
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
