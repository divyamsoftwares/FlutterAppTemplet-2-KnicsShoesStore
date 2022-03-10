
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knicsshoesstore/drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetail extends StatefulWidget {
  static String routeName = 'productdetail';

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>
    with TickerProviderStateMixin {
  int activeIndex = 0;
  bool pressAttention = false;

  bool press = false;
  bool Attention = false;
  bool select = false;
  bool data = false;

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

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
              'Shopping ',
              style: GoogleFonts.oswald(
                  fontStyle: FontStyle.normal,
                  color: Color(0xff000000),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 20),
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

            SizedBox(height: 46),
            Padding(
              padding: const EdgeInsets.only( left: 30,right: 30),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Air Jordan V Retro",
                          style: GoogleFonts.oswald(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text("\$359",
                            style: GoogleFonts.oswald(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB10000))),
                      ],
                    ),
                    CircleAvatar(
                      radius: 18,
                      backgroundColor: Color(0xFFF2F2F2),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_rounded,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            CarouselSlider.builder(
                options: CarouselOptions(
                  height: 251,
                  viewportFraction: 1,
                  autoPlay: true,
                  //reverse: true,
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
            Padding(
              padding: const EdgeInsets.only( left: 30,right: 30),
              child: Container(
                child: Column(
                  children: [
                    Positioned(
                        left: 41.07,
                        right: 56.8,
                        top: 57.51,
                        bottom: 41.5,
                        child: buildIndicator()),
                    Row(
                      children: [
                        Text(
                          "COLOR",
                          style: GoogleFonts.oswald(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 22,
                          backgroundColor: Colors.red.shade50,
                          child: Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                              color: Color(0xFFFF0000),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF9CD4),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                        ),
                        SizedBox(width: 15),
                        Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                              //boxShadow:[ BoxShadow(color: Colors.red, blurRadius: 9,),],
                              border: Border.all(color: Colors.black)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SIZE",
                          style: GoogleFonts.oswald(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Size Guide",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2A74EB)),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() => pressAttention = !pressAttention);
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: pressAttention ? Colors.blue : Color(0xFFF6F6F6),
                              //  color: Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                                child: Text('8',
                                    style: pressAttention
                                        ? GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)
                                        : GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        // SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            setState(() => press = !press);
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: press ? Colors.blue : Color(0xFFF6F6F6),
                              //  color: Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                                child: Text('8.5',
                                    style: press
                                        ? GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)
                                        : GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        // SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            setState(() => Attention = !Attention);
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: Attention ? Colors.blue : Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                                child: Text('9',
                                    style: Attention
                                        ? GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)
                                        : GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        //SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            setState(() => select = !select);
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: select ? Colors.blue : Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                                child: Text('9.5',
                                    style: select
                                        ? GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)
                                        : GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        // SizedBox(width: 15),
                        InkWell(
                          onTap: () {
                            if (data = false) {
                              data = true;
                            } else {
                              data = false;
                            }
                            setState(() => data = !data);
                          },
                          child: Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              color: data ? Colors.blue : Color(0xFFF6F6F6),
                              borderRadius: BorderRadius.all(Radius.circular(50)),
                            ),
                            child: Center(
                                child: Text('10',
                                    style: data
                                        ? GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)
                                        : GoogleFonts.oswald(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 25),
                    Container(
                      child: RaisedButton(
                        onPressed: () {
                          // Navigator.of(context).pushNamed(ShoppingScren.routeName);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(70.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xff4EC1F5),
                                  Color(0xff2971EB),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              borderRadius: BorderRadius.circular(110.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: double.infinity, minHeight: 72.0),
                            alignment: Alignment.center,
                            child: Text("ADD TO CART",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.oswald(
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    TabBar(
                      indicatorColor: Colors.transparent,
                      controller: _tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      // labelPadding: EdgeInsets.only(left: 25, right: 25),
                      isScrollable: true,
                      tabs: [
                        Tab(
                            child: Text("Product",
                                style: GoogleFonts.oswald(
                                    color: Colors.black,
                                    fontSize: 18, fontWeight: FontWeight.normal))),

                        Tab(
                            child: Text("Specification",
                                style: GoogleFonts.oswald(
                                    fontSize: 18, fontWeight: FontWeight.normal))),

                        Tab(
                            child: Text("Review",
                                style: GoogleFonts.oswald(
                                    fontSize: 18, fontWeight: FontWeight.normal))),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 192,
                      //  width: 303,
                      child: Column(
                        children: [
                          Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum volutpat massa, vitae mattis lectus placerat nec.",
                              style: GoogleFonts.openSans(fontSize: 16)),
                          Text(
                              "- Sed vitae velit condimentum, molestie dolor quis, cursus nibh.",
                              style: GoogleFonts.openSans(fontSize: 16)),
                          Text(
                              "- Nullam ut nibh tristique, mollis ligula ut, molestie ante.",
                              style: GoogleFonts.openSans(fontSize: 16)),
                        ],
                      ),
                    )
                  ],
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
      //margin: EdgeInsets.symmetric(horizontal: 0),
      height: 251,
      width: 302,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.all(Radius.circular(15)),
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
