import 'package:doctor/color.dart';
import 'package:doctor/medical_file_details/vital_rates.dart';
import 'package:doctor/widgets/my_widgets.dart';
import 'package:flutter/material.dart';

class PatientData extends StatefulWidget {
  const PatientData({Key? key}) : super(key: key);

  @override
  _PatientDataState createState() => _PatientDataState();
}

class _PatientDataState extends State<PatientData> {
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
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 48, vertical: 15),
                      margin:
                          const EdgeInsets.only(top: 15, left: 45, right: 45),
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        color: MyColors().white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Column(
                        children: const [
                          GreyRow(text: 'ملف المريض', secondText: '25'),
                          GreyRow(text: 'الاسم', secondText: 'علي أحمد'),
                          GreyRow(
                              text: 'تاريخ الميلاد', secondText: '11/5/2000'),
                          GreyRow(text: 'النوع', secondText: 'ذكر'),
                          GreyRow(text: 'المهنة', secondText: 'مهندس'),
                          GreyRow(text: 'الجنسية', secondText: 'مصري'),
                          GreyRow(text: 'التأمين', secondText: 'حكومي'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const MyCard(text: 'العلاج الحالي'),
                    const MyCard(text: 'الأمراض المزمنة'),
                    const MyCard(text: 'الأشعة و التحاليل'),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              (MaterialPageRoute(
                                  builder: (context) =>const VitalRates())));
                        },
                        child: const MyCard(text: 'المعدلات الحيوية')),
                    const MyCard(text: 'التطعيمات'),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 640),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/45.jpg',
                ),
                radius: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
