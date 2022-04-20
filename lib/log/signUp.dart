import 'dart:io';

import 'package:doctor/log/imagePicker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../botton_screens/botton.dart';
import '../patient/navbar.dart';
import 'code.dart';

class signUp extends StatefulWidget {
  final int type;

  const signUp({required this.type});

  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),
        appBar: AppBar(
          // actions: [
          //   IconButton(
          //       onPressed: () {},
          //       icon: Icon(
          //         Icons.menu,
          //         color: Colors.black,
          //       ))
          // ],

          title: Image.asset(
            "assets/tameni.png",
            width: 80,
          ),
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40), topLeft: Radius.circular(40))),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "تسجيل دخول ",
                  style: GoogleFonts.roboto(
                    color: Color.fromRGBO(6, 187, 192, 10),
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "قم بمسح كارنيه التأمين الخاصة بك  ",
                style: GoogleFonts.roboto(
                  color: Color.fromRGBO(34, 49, 46, 30),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -4,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              BuildImagePicker(),
              const SizedBox(
                height: 7,
              ),
              Text(
                "أو  ",
                style: GoogleFonts.roboto(
                  color: Color.fromRGBO(34, 49, 46, 30),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -4,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 7,
              ),
              FlatButton(
                child: Text(
                  'رقم الكارنيه',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                color: const Color.fromRGBO(6, 187, 192, 1),
                textColor: Colors.white,
                minWidth: 220,
                height: 55,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => code(
                                type: widget.type,
                              )));
                },
              ),
      Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.only(left: 290,top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(35),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 2), // changes position of shadow
            ),
          ],
        ),
        child: FloatingActionButton(

          onPressed: () {
            if(widget.type ==1){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BottomNavBar()));
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                ),
              );}},

elevation: 0,

        backgroundColor:Color.fromRGBO(6, 187, 192, 10),

          child: const Icon(Icons.done_outlined,size: 30,),

        ),
      ),
            ],

          ),


        ),

      // floatingActionButton: FloatingActionButton(
      //
      //   onPressed: () {
      // if(widget.type ==1){
      //   Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => BottomNavBar()));
      // } else {
      //   Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => HomeScreen(),
      //       ),
      //   );}},
      //
      //
      //
      //   backgroundColor: Color.fromRGBO(6, 187, 192, 10),
      //
      //   child: const Icon(Icons.thumb_up,size: 22,),
      //
      // ),

    );
  }
}
