import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knicsshoesstore/drawer.dart';
import 'package:knicsshoesstore/payment.dart';

import 'Delivery.dart';
import 'Shopping_Cart.dart';

class SubmitOrderScreen extends StatefulWidget {
  static String routeName = 'order';

  @override
  _SubmitOrderScreenState createState() => _SubmitOrderScreenState();
}

class _SubmitOrderScreenState extends State<SubmitOrderScreen> {
  bool parentAttention = false;
  bool attention = false;
  bool payment = false;
  bool order = true;
  int count = 1;
  bool isTrue = false;
  int count1 = 1;

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
              'Shopping Order',
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
                              Navigator.of(context)
                                  .pushNamed(ShoppingCartScreen.routeName);
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
                              // Navigator.of(context)
                              //     .pushNamed(DeliveryScreen.routeName);
                              setState(() {
                                attention = !attention;
                              });
                              Navigator.of(context)
                                  .pushNamed(DeliveryScreen.routeName);
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
                SizedBox(height: 40),
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Goods',
                              style: GoogleFonts.oswald(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 50),
                              child: Text(
                                'Edit',
                                style: GoogleFonts.roboto(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0xff2A74EB)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Card(
                                elevation: 0,
                                color: Color(0xffF6F6F6),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'AIR JORDAN V RETRO\nWHITE SNEAKERS ',
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.oswald(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$359',
                                      style: GoogleFonts.oswald(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          color: Color(0xffB10000)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: SizedBox(
                                        width: 120,
                                        child: Container(
                                            height: 25,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              //border: Border.all(color: Colors.deepOrange),
                                              // color: Colors.deepOrange,
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    if (count > 1) {
                                                      setState(() {
                                                        count--;
                                                      });
                                                    }
                                                    if (count == 1) {
                                                      setState(() {
                                                        isTrue = false;
                                                      });
                                                    }
                                                  },
                                                  child: Icon(
                                                    Icons.remove,
                                                    size: 15,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Container(
                                                  height: 23,
                                                  width: 23,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff9D9D9D)),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "$count",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        count++;
                                                      });
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 15,
                                                      color: Colors.black,
                                                    )),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Container(
                              height: 80,
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Card(
                                elevation: 0,
                                color: Color(0xffF6F6F6),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'LITE RUNNER ORANGE\nBLACK',
                                  overflow: TextOverflow.clip,
                                  style: GoogleFonts.oswald(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff000000)),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$329',
                                      style: GoogleFonts.oswald(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.normal,
                                          color: Color(0xffB10000)),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      child: SizedBox(
                                        width: 120,
                                        child: Container(
                                            height: 25,
                                            width: 100,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  onTap: () {
                                                    if (count1 > 1) {
                                                      setState(() {
                                                        count1--;
                                                      });
                                                    }
                                                    if (count1 == 1) {
                                                      setState(() {
                                                        isTrue = false;
                                                      });
                                                    }
                                                  },
                                                  child: Icon(
                                                    Icons.remove,
                                                    size: 15,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                Container(
                                                  height: 23,
                                                  width: 23,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color:
                                                            Color(0xff9D9D9D)),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      "$count1",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        count1++;
                                                      });
                                                    },
                                                    child: Icon(
                                                      Icons.add,
                                                      size: 15,
                                                      color: Colors.black,
                                                    )),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text(
                              'Delivery',
                              style: GoogleFonts.oswald(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Container(
                              height: 48,
                              width: 310,
                              decoration: BoxDecoration(
                                color: Color(0xffF2F2F2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 19),
                                    child: Text(
                                      '2725 W Billings St, Compton, CA, 90220  ',
                                      style: GoogleFonts.roboto(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000),
                                          fontSize: 14),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Row(
                          children: [
                            Text(
                              'Payment',
                              style: GoogleFonts.oswald(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff000000)),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Image(
                                      image: AssetImage(
                                          'assets/images/Group 615.png'),
                                    ),
                                    Text(
                                      'Master Card',
                                      style: GoogleFonts.roboto(
                                          fontStyle: FontStyle.normal,
                                          fontSize: 8,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff000000)),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 48,
                                  width: 236,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF2F2F2),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 29),
                                        child: Text(
                                          '8027 - 5610 - 8832 - 1987 ',
                                          style: GoogleFonts.roboto(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xff000000),
                                              fontSize: 14),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Price',
                                  style: GoogleFonts.roboto(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      color: Color(0xff000000)),
                                ),
                                Text(
                                  '\$650,00',
                                  style: GoogleFonts.roboto(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                      color: Color(0xff000000)),
                                ),
                              ],
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
                                            'SUBMIT ORDER',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
