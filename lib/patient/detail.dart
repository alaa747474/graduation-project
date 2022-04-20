
import 'package:doctor/patient/success_appointment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'file_doctor.dart';

class DetailScreen extends StatelessWidget {
  // var _name;
  // var _description;
  // var _imageUrl;

  // DetailScreen(this._name, this._description, this._imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      
      body: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(40), topLeft: Radius.circular(40))),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Container(
                    height: 105,
                    width: 95,
                    margin: const EdgeInsets.all(11),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: 3,
                            spreadRadius: 1,
                            offset: Offset(0, 3),
                          ),
                        ],
                        image: const DecorationImage(
                            image: AssetImage(
                              "assets/fdoc.png",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => doctor(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.remove_red_eye,
                            color: Color.fromRGBO(6, 187, 192, 1),
                            size: 30,
                          )),

                      // SizedBox(
                      //   width: 30,
                      // ),
                      Text(
                        "د. منى أحمد",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Text(
                    "جراحة عامة",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: const Text(
                    "المواعيد المتاحة",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 21,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 85,
                      width: 80,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            // color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: .2,
                            spreadRadius: .2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: const [
                          Text(
                            "الثلاثاء",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "11",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 80,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            // color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: .2,
                            spreadRadius: .2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: const [
                          Text(
                            "الاثنين",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 80,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            // color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: .2,
                            spreadRadius: .2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: const [
                          Text(
                            "الأحد",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "9",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 80,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(6, 187, 192, 400),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          // BoxShadow(
                          //   color: const Color.fromRGBO(6, 187, 192, 1),
                          //   // color: Color.fromRGBO(137, 201, 203, 100),
                          //   blurRadius: .2,
                          //   spreadRadius: .2,
                          //   offset: Offset(0, 2),
                          // ),
                        ],
                      ),
                      child: Column(
                        children: const [
                          Text(
                            "السبت",
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "8",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width * .9,
                    color: Colors.grey[300],
                  ),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            // color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: .2,
                            spreadRadius: .2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "م 12:00",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            // color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: .2,
                            spreadRadius: .2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "ص 11:00",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(6, 187, 192, 400),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          // BoxShadow(
                          //   color: const Color.fromRGBO(6, 187, 192, 1),
                          //   // color: Color.fromRGBO(137, 201, 203, 100),
                          //   blurRadius: .2,
                          //   spreadRadius: .2,
                          //   offset: Offset(0, 2),
                          // ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "ص 10:00",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            // color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: .2,
                            spreadRadius: .2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "م 4:45",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            // color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: .2,
                            spreadRadius: .2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "م 3:30",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      margin: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            // color: Color.fromRGBO(137, 201, 203, 100),
                            blurRadius: .2,
                            spreadRadius: .2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "م 1:30",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color.fromRGBO(6, 187, 192, 1),
                            )),
                        child: FlatButton(
                          child: Text(
                            'استشارة',
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(6, 187, 192, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          //color:  const Color.fromRGBO(6, 187, 192, 1),
                          textColor: Color.fromRGBO(6, 187, 192, 1),

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),

                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => signIn(
                            //       type: widget.type,
                            //     ),
                            //   ),
                            // );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(6, 187, 192, 1),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color.fromRGBO(6, 187, 192, 1),
                            )),
                        child: FlatButton(
                          child: Text(
                            '  حجز',
                            style: GoogleFonts.cairo(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),

                          //color:  const Color.fromRGBO(6, 187, 192, 1),
                          textColor: Color.fromRGBO(6, 187, 192, 1),

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),

                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => appointment(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                // Container(
                //   width: MediaQuery.of(context).size.width * .5,
                //   height: 40,
                //   decoration: BoxDecoration(
                //     color: Color.fromRGBO(137, 201, 203, 440),
                //     borderRadius: BorderRadius.circular(25),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     children: [
                //       Text(
                //         "عرض الملف الشخصى",
                //         style: TextStyle(
                //           fontSize: 18,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.black87,
                //         ),
                //       ),
                //       Icon(Icons.remove_red_eye),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
