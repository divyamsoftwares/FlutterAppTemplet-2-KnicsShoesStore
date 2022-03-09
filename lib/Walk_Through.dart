import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knicsshoesstore/Shopping.dart';

import 'loginscreen.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({Key? key}) : super(key: key);

  @override
  _WalkThroughScreenState createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white, Colors.black])),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    Container(height: 500,),
                    Row(
                      children: [
                        Text(
                          'LET\'S IMPROVE\nYOUR APPEARANCE',
                          style: GoogleFonts.oswald(
                            fontStyle: FontStyle.normal,
                            textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                              color: Color(0XFFFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec rutrum volutpat massa, vitae mattis lectus placerat nec.',
                      style: GoogleFonts.openSans(
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0XFFF2F2F2)),
                      overflow: TextOverflow.clip,
                    ),
                    SizedBox(height: 30),
                    Container(
                      height: 72.0,

                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(LoginScreen.routeName);
                        },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [Color(0xff4EC1F5),Color(0xff2971EB), ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,

                              ),
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 304.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "GET STARTED",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.oswald(fontStyle: FontStyle.normal,fontWeight: FontWeight.w500,fontSize: 24,color: Colors.white)
                            ),
                          ),
                        ),
                      ),
                    ),



                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
