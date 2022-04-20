import 'package:doctor/color.dart';
import 'package:doctor/widgets/my_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Reservations extends StatefulWidget {
  const Reservations({Key? key}) : super(key: key);

  @override
  _ReservationsState createState() => _ReservationsState();
}

class _ReservationsState extends State<Reservations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            padding:
                const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 15),
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: MyColors().primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/tameni.png',
                    width: 50,
                    height: 50,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 30,
                        color: MyColors().white,
                      )),
                ],
              ),
            )),
        Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  color: MyColors().white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: ListView(
                  children: [
                    const Center(child: BlackText(text: 'حجوزاتي')),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 160,
                          height: 55,
                          decoration: BoxDecoration(
                              color: MyColors().primaryColor,
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              )),
                          child: Center(
                              child: WhiteText(text: 'حجوزاتي', size: 18)),
                        ),
                        Container(
                          width: 160,
                          height: 55,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      MyColors().primaryColor.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(0, 0),
                                ),
                              ],
                              color: MyColors().white,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              )),
                          child: Center(
                            child: Text(
                              'استشاراتي',
                              style: GoogleFonts.cairo(
                                  color: MyColors().primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    ResrvationContainer(
                        text: '18 نوفمبر',
                        text2: '10:00',
                        text3: 'منذ 3 اشهر علاج شهري',
                        text4: 'د/احمد علي',
                        color: MyColors().primaryColor),
                    ResrvationContainer(
                        text: '18 نوفمبر',
                        text2: '10:00',
                        text3: 'منذ 3 اشهر علاج شهري',
                        text4: 'د/احمد علي',
                        color: MyColors().primaryColor.withOpacity(0.4)),
                    ResrvationContainer(
                        text: '18 نوفمبر',
                        text2: '10:00',
                        text3: 'منذ 3 اشهر علاج شهري',
                        text4: 'د/احمد علي',
                        color: Colors.grey[400] as Color),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        height: 65,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 45, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300]),
                        child:const Center(
                            child: WhiteText(text: 'حجز موعد جديد', size: 14))),
                            const SizedBox(height: 10,),
                            Center(
                              child: Column(
                                children: const[
                                  SmallBlackText(text: 'الموعد القادم 20 نوفمبر يوم الثلاثاء', size: 15),
                                  SmallBlackText(text: 'الساعة 11:00 صباحا', size: 15)
                                ],
                              ),
                            ),
                            const SizedBox(height: 20,),
                            InkWell(onTap: (){},
                              child: Center(child: Container(
                                                      width: 200,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        MyColors().primaryColor.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                                color: MyColors().white,
                                borderRadius:  BorderRadius.circular(10)),
                                                      child:const Center(
                              child: SmallBlackText(text: 'الغاء الحجز', size: 17)
                                                      ),
                                                    ),),
                            )
                  ],
                ))),
      ],
    ));
  }
}
