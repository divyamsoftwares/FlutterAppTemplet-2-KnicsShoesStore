

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knicsshoesstore/Delivery.dart';
import 'package:knicsshoesstore/Shopping_Cart.dart';
import 'package:knicsshoesstore/Submit_Order.dart';
import 'package:knicsshoesstore/drawer.dart';



class Payment extends StatefulWidget {
  static String routeName = 'payment';

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int activeIndex = 0;
  bool _show = true;
  bool parentAttention = false;
  bool attention = false;
  bool payment = true;
  bool order = false;
  List<String> image = [
    "assets/images/Group 615.png",
    "assets/images/pay.png",
    "assets/images/payment.png",
  ];
  List<String> text = [
    "Master Card",
    "",
    "",
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
              'Payment',
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
        child: Column(
          children: [

            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 36),
              child: Row(
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
                            Navigator.of(context).pushNamed(SubmitOrderScreen.routeName);
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
            ),
            SizedBox(height: 30),
            CarouselSlider.builder(
                options: CarouselOptions(
                  height: 140,
                  viewportFraction: 0.4,
                  autoPlay: false,
                  //reverse: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayInterval: Duration(seconds: 2),
                  onPageChanged: (index, reason) =>
                      setState(() => activeIndex = index),
                ),
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return _buildContainer(index);
                }),
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 30),
              child: Row(
                children: [
                  Text("Cart Details",
                      style: GoogleFonts.oswald(
                          fontSize: 18, fontWeight: FontWeight.bold))
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 48,
              width: 307,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 27, top: 16, bottom: 16),
                child: Text("Mike Joe",
                    style: GoogleFonts.roboto(
                        fontSize: 14, fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 48,
              width: 307,
              decoration: BoxDecoration(
                color: Color(0xFFF6F6F6),
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 27, top: 16, bottom: 16),
                child: Text("8027 - 5610 - 8832 - 1987",
                    style: GoogleFonts.roboto(
                        fontSize: 14, fontWeight: FontWeight.w500)),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.only(left: 36, right: 36),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      height: 48,
                      width: 142,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 27, top: 16, bottom: 16),
                        child: Text("09/2021",
                            style: GoogleFonts.roboto(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                  //  SizedBox(width: 25,),
                  Flexible(
                    child: Container(
                      height: 48,
                      width: 142,
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 27, top: 16, bottom: 16),
                        child: Text("18362",
                            style: GoogleFonts.roboto(
                                fontSize: 14, fontWeight: FontWeight.w500)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 27),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlutterSwitch(
                  height: 20,
                  width: 40,
                  toggleSize: 15,
                  value: _show,
                  onToggle: (bool value) {
                    setState(() {
                      _show = !_show;
                    });
                  },
                ),
                Text("Save Credit Card Information",
                    style: GoogleFonts.roboto(
                        fontSize: 14, fontWeight: FontWeight.w500)),
              ],
            ),
            SizedBox(height: 60),
            Container(
              height: 72,
              width: 303,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF4EC1F5),
                    Color(0xFF2971EB),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(80.0)),
              ),
              child: InkWell(
                onTap: () {},
                child: Center(
                  child: Text(
                    'NEXT STEP',
                    style: GoogleFonts.oswald(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(int index) {
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 140,
      width: 168,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(image[index]),
          ),
          Text(
            text[index],
            style:
                GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
