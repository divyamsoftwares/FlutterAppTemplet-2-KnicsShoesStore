import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knicsshoesstore/Shopping.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 37,
              ),
              CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 414,
                    viewportFraction: 0.6,
                    autoPlay: true,
                    reverse: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    autoPlayInterval: Duration(seconds: 2),
                    onPageChanged: (index, reason) =>
                        setState(() => activeIndex = index),
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index, realIndex) {
                    return _buildContainer(index);
                  }),
              SizedBox(height: 16),
              Positioned(
                  left: 41.07,
                  right: 56.8,
                  top: 57.51,
                  bottom: 41.5,
                  child: buildIndicator()),
              SizedBox(height: 40),
              Container(
                height: 64,
                width: 303,
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey.shade100)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/google.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Positioned(
                          left: 36.05,
                          right: 28.22,
                          top: 66.13,
                          bottom: 31.16,
                          child: InkWell(
                              onTap: () {},
                              child: Text("Login with Google",
                                  style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black)))),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 64,
                width: 303,
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey.shade100)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 3,
                          ),
                        ],
                        //  border: Border.all(color: Colors.grey.shade50)
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/facebook.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Positioned(
                          left: 36.05,
                          right: 28.22,
                          top: 66.13,
                          bottom: 31.16,
                          child: InkWell(
                              onTap: () {},
                              child: Text("Login with Facebook",
                                  style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black)))),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 64,
                width: 303,
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey.shade100)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 3,
                          ),
                        ],
                        //  border: Border.all(color: Colors.grey.shade50)
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/images/apple.png")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Positioned(
                          left: 36.05,
                          right: 28.22,
                          top: 66.13,
                          bottom: 31.16,
                          child: InkWell(
                              onTap: () {},
                              child: Text("Login with Apple",
                                  style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black)))),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?",
                      style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black)),
                  SizedBox(
                    width: 2,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(ShoppingScren.routeName);
                      },
                      child: Text("Sing Up",
                          style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue))),

                ],
              ),
              SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(int index) {
    return Container(
      margin: EdgeInsets.all(5.0),
      //margin: EdgeInsets.symmetric(horizontal: 0),
      height: 414,
      width: 226,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 4,
        effect: SwapEffect(
          dotHeight: 8,
          dotWidth: 8,
          spacing: 12,
          activeDotColor: Color(0xFF2A74EB),
          dotColor: Colors.blue.shade100,
        ),
      );
}
