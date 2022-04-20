import 'package:doctor/log/siginSuccess.dart';
import 'package:doctor/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class signIn extends StatefulWidget {
  final int type;

  const signIn({required this.type});

  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(6, 187, 192, 1),
      appBar: AppBar(
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.menu,
        //         color: Colors.black,
        //       ))
        // ],

        backgroundColor: const Color.fromRGBO(6, 187, 192, 10),

        elevation: 0,
      ),
      body: Container(
        // margin: EdgeInsets.only(
        //   top: MediaQuery.of(context).size.height * 0.05,
        // ),
        padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "الاسم ",
                  style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                sigin1("الاسم رباعى"),

                Text(
                  "المعلومات الشخصية ",
                  style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                sigin1("الرقم القومى"),
                sigin1("رقم التليفون"),
                Visibility(
                  visible: widget.type == 2,
                  child: sigin1("التخصص"),
                ),
                Visibility(
                  visible: widget.type == 1,
                  child: Column(
                    children: List.generate(
                      fields.length,
                      (index) => sigin1(
                        fields[index],
                      ),

                      // (index) => Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //       vertical: 7, horizontal: 6),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //         boxShadow: const [
                      //           BoxShadow(
                      //             color: Color.fromRGBO(137, 201, 203, 10),
                      //             blurRadius: 2.5,
                      //             spreadRadius: .1,
                      //             offset: Offset(0, 2),
                      //           ),
                      //         ],
                      //         color: Colors.white,
                      //         borderRadius: BorderRadius.circular(20)),
                      //     height: 55,
                      //     width: MediaQuery.of(context).size.width * .8,
                      //     child: Padding(
                      //       padding: const EdgeInsets.only(right: 9.0),
                      //       child: TextFormField(
                      //         textAlign: TextAlign.end,
                      //         controller: controller,
                      //         decoration: InputDecoration(
                      //           // prefixIcon: Icon(Icons.search),
                      //           disabledBorder: InputBorder.none,
                      //           hintText: fields[index],
                      //           hintStyle: TextStyle(
                      //               color: Colors.grey[400],
                      //               wordSpacing: 2,
                      //               fontWeight: FontWeight.bold,
                      //               fontSize: 18,
                      //               letterSpacing: 2),
                      //
                      //           border: const OutlineInputBorder(
                      //             //borderRadius: BorderRadius.circular(20),
                      //             borderSide: BorderSide.none,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 6),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(137, 201, 203, 10),
                            blurRadius: 2.5,
                            spreadRadius: .1,
                            offset: Offset(0, 2),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 55,
                    width: double.infinity,
                    child: TextFormField(
                      textAlign: TextAlign.end,
                      controller: controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.upload_outlined),
                        disabledBorder: InputBorder.none,
                        hintText: ' صورة كارنية النقابة  ',
                        hintStyle: TextStyle(
                            color: Colors.grey[400],
                            wordSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 2),
                        border: const OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  "كلمة المرور ",
                  style: GoogleFonts.roboto(
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 6),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(137, 201, 203, 10),
                            blurRadius: 2.5,
                            spreadRadius: .1,
                            offset: Offset(0, 2),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 55,
                    width: double.infinity,
                    child: TextFormField(
                      textAlign: TextAlign.end,
                      controller: controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.remove_red_eye),
                        disabledBorder: InputBorder.none,
                        hintText: 'كلمة المرور',
                        hintStyle: TextStyle(
                            color: Colors.grey[400],
                            wordSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 2),
                        border: const OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 6),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(137, 201, 203, 10),
                            blurRadius: 2.5,
                            spreadRadius: .1,
                            offset: Offset(0, 2),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 55,
                    width: double.infinity,
                    child: TextFormField(
                      textAlign: TextAlign.end,
                      controller: controller,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.remove_red_eye),
                        disabledBorder: InputBorder.none,
                        hintText: 'تأكيد كلمة المرور ',
                        hintStyle: TextStyle(
                            color: Colors.grey[400],
                            wordSpacing: 2,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            letterSpacing: 2),
                        border: const OutlineInputBorder(
                          //borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  child: FlatButton(
                    child: Text(
                      'تسجيل الدخول',
                      style: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: const Color.fromRGBO(6, 187, 192, 1),
                    textColor: Colors.white,
                    minWidth: 260,
                    height: 55,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => siginsuccess(type: widget.type,),
                        ),
                      );
                    },
                  ),
                ), //// bottom
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> fields = ["جهة التأمين", "العمر", "الوزن", "الطول"];
}
