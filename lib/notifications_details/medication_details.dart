import 'package:doctor/color.dart';
import 'package:doctor/notifications_details/medication_time.dart';
import 'package:doctor/widgets/my_widgets.dart';
import 'package:flutter/material.dart';


class MedicationDetails extends StatefulWidget {
  const MedicationDetails({Key? key}) : super(key: key);

  @override
  _MedicationDetailsState createState() => _MedicationDetailsState();
}

class _MedicationDetailsState extends State<MedicationDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                padding: const EdgeInsets.only(top: 10, right: 20, left: 20),
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
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const WhiteText(text: 'رجوع', size: 20))
                    ],
                  ),
                )),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.87,
                  decoration: BoxDecoration(
                    color: MyColors().white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz)),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/panadol.jpg',
                              width: 100,
                              height: 100,
                            ),
                            const SmallBlackText(
                              text: 'بانادول اكسترا',
                              size: 16,
                            ),
                            const SmallGreyText(
                              text: 'مسكن للالم وخافض للحرارة',
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 45, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            MedicationTime(
                                icon: Icons.timer_rounded,
                                text: 'المعدل',
                                text2: 'مرتين في اليوم'),
                            MedicationTime(
                                icon: Icons.calendar_today,
                                text: 'المدة',
                                text2: 'شهر واحد'),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: SmallBlackText(
                          text: 'الدواء التالي',
                          size: 15,
                        ),
                      ),
                      InkWell(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicationTimes()));},
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/panadol.jpg',
                                    width: 60,
                                    height: 60,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SmallBlackText(
                                        text: 'بانادول اكسترا',
                                        size: 15,
                                      ),
                                      SmallGreyText(
                                        text: 'مسكن للالم وخافض للحرارة',
                                        size: 15,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(110, 40),
                                      maximumSize: const Size(110, 40),
                                      elevation: 0,
                                      primary: MyColors().primaryColor,
                                    ),
                                    child: const Text('تم',
                                        style: TextStyle(fontSize: 17)),
                                    onPressed: () {},
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(110, 40),
                                        maximumSize: const Size(110, 40),
                                        elevation: 0,
                                        primary: Colors.grey[200]),
                                    child: Text(
                                      'ذكرني لاحقا',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: MyColors().primaryColor),
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                          height: 150,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            color: MyColors().white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                offset: Offset(-10, 0),
                                color: MyColors().primaryColor,
                                spreadRadius: -1,
                              ),
                              BoxShadow(
                                  color: MyColors().primaryColor.withOpacity(0.2),
                                  spreadRadius: -2,
                                  blurRadius: 1,
                                  offset: Offset(-6, 0)),
                            ],
                          ),
                          margin:
                              EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          padding: EdgeInsets.all(15),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
