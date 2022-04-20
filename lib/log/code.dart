import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../botton_screens/botton.dart';
import '../patient/navbar.dart';

class code extends StatefulWidget {
  final int type;
  code({required this.type});

  @override
  _codeState createState() => _codeState();
}

// ignore: camel_case_types
class _codeState extends State<code> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(6, 187, 192, 10),
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //       ))
        // ],
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            height: 40,
            width: 60,
            child: const Image(
              image: AssetImage("assets/tameni.png"),
              fit: BoxFit.contain,
            ),
          ),
        ),
        // leadingWidth: 100,

        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

        elevation: 0,
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  const Text(
                    "تسجيل الدخول ",
                    style: TextStyle(
                      color: Color.fromRGBO(6, 187, 192, 10),
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Lottie.asset("assets/sign.json"),
                    // "https://assets5.lottiefiles.com/packages/lf20_h7dcmwwl.json"
                  ),
                   Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      widget.type ==2 ? "أدخل كارنيه النقابة": "أدخل رقم التأمين",
                      style: TextStyle(
                        color: Color.fromRGBO(6, 187, 192, 10),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //     boxShadow:  [
                    //       BoxShadow(
                    //         color: Color.fromRGBO(6, 187, 192, 100),
                    //         blurRadius: 3,
                    //         spreadRadius: .1,
                    //         offset: Offset(0,2 ),
                    //       ),
                    //     ],
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      padding: EdgeInsets.all(28),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _textFieldOTP(first: true, last: false),
                            _textFieldOTP(first: false, last: false),
                            _textFieldOTP(first: false, last: false),
                            _textFieldOTP(first: false, last: true),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 260),
                    child: SizedBox.fromSize(
                      size: Size(66, 66), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Color.fromRGBO(6, 187, 192, 30),
                          // button color
                          child: InkWell(
                            splashColor: Colors.black, // splash color
                            onTap: () {
                              if(widget.type ==1){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BottomNavBar()));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              }
                            }, // button pressed
                            child: Icon(
                              Icons.done,
                              size: 40,
                              color: Colors.white,
                            ), // icon
                            // text
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
      ]),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: .7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(34, 49, 46, 30),
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2,
                  color: Color.fromRGBO(6, 187, 192, 10),
                ),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
