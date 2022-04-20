
import 'package:doctor/color.dart';
import 'package:doctor/medical_file_details/patient_data.dart';
import 'package:doctor/widgets/my_widgets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';


class MedicalFile extends StatefulWidget {
  const MedicalFile({Key? key}) : super(key: key);

  @override
  _MedicalFileState createState() => _MedicalFileState();
}

class _MedicalFileState extends State<MedicalFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 45),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.image,
                                  size: 30,
                                )),
                            const SizedBox(
                              width: 75,
                            ),
                            const BlackText(text: 'الملف الطبي'),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const PatientData()));
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  DottedBorder(
                                    dashPattern: const [10, 8],
                                    padding: const EdgeInsets.all(0),
                                    strokeWidth: 2,
                                    radius: const Radius.circular(20),
                                    borderType: BorderType.RRect,
                                    color: MyColors().primaryColor,
                                    child: const Icon(
                                      Icons.qr_code_2_outlined,
                                      size: 220,
                                    ),
                                  ),
                                  const CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/45.jpg',
                                    ),
                                    radius: 35,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const BlackText(text: 'علي احمد'),
                            const SizedBox(
                              height: 20,
                            ),
                            const GreyText(text: 'امسح الكود لرؤية الملف الطبي')
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
